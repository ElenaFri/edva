let folder = $env.FILE_PWD
let repo = 'https://github.com/ElenaFri/edva'
let report = (open --raw ($folder | path join 'report.md'))
let sections = ($report | parse -r '(?s)\*\*([0-9]+)\. (.*?)\*\*\n(.*?)(?=\n\*\*(?:[0-9]+\.|Previous audit:))')
let specs = [
  {n: 1, title: 'codegen: align array division and remainder guards with scalar semantics', related: [128], accept: 'Test signed/unsigned widths, zero divisors, INT_MIN / -1, remainder, vector and counted-loop paths, and optimization levels.'}
  {n: 2, title: 'json: isolate nested container children instead of slicing shared arenas from zero', related: [], accept: 'Assert exact trees for nested arrays, nested objects, mixed containers, siblings, and empty children.'}
  {n: 3, title: 'json: enforce separators, number grammar, and complete document consumption', related: [], accept: 'Reject all five reported malformed inputs and preserve valid whitespace and separator cases.'}
  {n: 4, title: 'json: validate hex escapes and decode UTF-16 surrogate pairs correctly', related: [], accept: 'Reject invalid hex; encode U+1F600 as four UTF-8 bytes; define and test malformed-surrogate handling.'}
  {n: 5, title: 'json: preserve representable subnormal numbers during exponent scaling', related: [], accept: 'Keep 1e-309 nonzero and cover smallest normal, subnormals, underflow, and overflow.'}
  {n: 6, title: 'str/io: preserve significant digits and signed/unsigned limits in numeric formatting', related: [], accept: 'Assert all five reported finite-value spellings, including minimum Int and maximum u64.'}
  {n: 7, title: 'str: handle infinity and NaN before float formatting normalization', related: [], accept: 'Format positive/negative infinity and NaN without hanging or aborting; specify signed-zero output.'}
  {n: 8, title: 'io: fix placeholder advancement and bound brace lookahead', related: [], accept: 'Test adjacent placeholders, following literals, final opening braces, scalar/record paths, and argument-count behavior.'}
  {n: 9, title: 'io: preserve partial-write progress and expose write failures/backpressure', related: [], accept: 'Recover every byte in a nonblocking pipe test; handle short writev results, EINTR, would-block, and permanent errors.'}
  {n: 10, title: 'io: distinguish read errors and would-block from EOF', related: [26], accept: 'Define the result contract and separately test data, EOF, EBADF, EINTR, and nonblocking would-block.'}
  {n: 11, title: 'net: close sockets on failure and terminate addrinfo walks on socket exhaustion', related: [], accept: 'Repeated failed connects/listens must not leak descriptors; descriptor exhaustion must return without spinning and free resolver storage.'}
  {n: 12, title: 'net: format IPv4 octets and ports as unsigned values', related: [], accept: 'Assert 192.168.1.1:50000 and boundary octets/ports through addr_str and its peer/local address callers.'}
  {n: 13, title: 'layout: unify target classification for thumb and other 32-bit triples', related: [136], accept: 'Compare semantic metadata with emitted layouts for thumbv6m, wasm32, supported x86-32 triples, and a 64-bit control.'}
  {n: 14, title: 'docs: replace stale stdlib APIs and repair executable networking and IO examples', related: [137], accept: 'Compile complete samples and assert representative output; HTTP examples must produce correctly framed responses.'}
  {n: 15, title: 'docs: explain recoverable named Error branches versus aborting extraction', related: [], accept: 'Document and execute both named-branch JSON recovery and fatal extraction examples.'}
  {n: 16, title: 'docs: classify every Dva block and enforce example compilation/execution in CI', related: [141], accept: 'Reject unclassified blocks, run explicitly runnable cases, verify negative exits/codes, and fail if requested compilation cannot run.'}
  {n: 17, title: 'docs/llms: correct capability claims, literal rules, diagnostics, and coverage gaps', related: [138 140], accept: 'Remove nonexistent streaming/serialization claims, reconcile literal and choice rules, audit diagnostic categories, and accurately label reference completeness.'}
  {n: 18, title: 'sort: add a stable scalable implementation for larger collections', related: [], accept: 'Preserve stable ordering and input immutability; benchmark ascending, descending, random, and duplicate-heavy input against insertion sort.'}
]
if ($sections | length) != 18 { error make {msg: 'Expected 18 report sections'} }
let issues = ($specs | each { |spec|
  let section = ($sections | where capture0 == ($spec.n | into string) | first)
  mut text = $section.capture2
  let links = ($text | parse -r '\]\(([^)]+)\)' | get capture0 | uniq)
  for link in $links {
    if not ($link | str starts-with 'https://') {
      let target = if ($link | str starts-with '../../') {
        $"($repo)/blob/da353f3c93c116e91eeb47b65973ff8f3cf5458b/($link | str substring 6..)"
      } else {
        $"($repo)/blob/master/audits/2026-10-13/($link)"
      }
      $text = ($text | str replace --all ('](' + $link + ')') ('](' + $target + ')'))
    }
  }
  let related = if ($spec.related | is-empty) { '' } else { "\nRelated completed work: " + ($spec.related | each { |n| $"#($n)" } | str join ', ') + ". This issue tracks the remaining scope found in the new audit.\n" }
  let report_link = ('[Full audit report](' + $repo + '/blob/master/audits/2026-10-13/report.md)')
  let body = $"Audit finding ($spec.n): **($section.capture1)**\n\nObserved with `edva 1.1.1+da353f3` on 2026-10-13. ($report_link). Gitea tracks the issues; source and audit artifacts are published to the configured GitHub origin.\n\n($text | str trim)\n\nAcceptance criteria:\n\n- [ ] ($spec.accept)\n- [ ] Add permanent regression coverage and update the corresponding reference where behavior/contracts change.\n($related)"
  {finding: $spec.n, title: $spec.title, body: $body}
})
$issues | to json | save -f ($folder | path join 'issue-drafts.json')
$issues | select finding title | print
