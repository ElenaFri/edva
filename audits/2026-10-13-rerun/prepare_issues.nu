let folder = $env.FILE_PWD
let repo = 'https://github.com/ElenaFri/edva'
let revision = 'b8e22672040b588151848e4483d3ebda97fdeb08'
let report = (open --raw ($folder | path join 'report.md'))
let sections = ($report | parse -r '(?s)### ([0-9]+)\. (.*?)\n\n(.*?)(?=\n### [0-9]+\.|\n## Verification)')
let specs = [
  {n: 1, title: 'http: compare query parameter keys and preserve present empty values', related: [], accept: 'Assert all four reported query lookups; define duplicate-key and decoding behavior.'}
  {n: 2, title: 'http: parse Content-Length with correct field boundaries and numeric validation', related: [], accept: 'Cover case-insensitive names, zero/optional whitespace, unrelated field names, malformed values, overflow, and duplicate lengths.'}
  {n: 3, title: 'http: reject incomplete bodies and unsupported framing instead of returning success', related: [], accept: 'Reject truncated declared bodies; decode or explicitly reject chunked requests; assert remaining-stream behavior and define bounded header/body allocation.'}
  {n: 4, title: 'io: finish partial-write and error handling in console output wrappers', related: [157], accept: 'Preserve every byte or expose incomplete progress/failure for out, err, outs, errs, outf, and errf; test short writev, EINTR, EAGAIN, and permanent failure.'}
  {n: 5, title: 'io: clear stale would-block state on EOF and expose stdin reader status', related: [158], accept: 'Test EAGAIN to data, EAGAIN to EOF, and error recovery across read paths; expose in status or explicitly document its limitation.'}
  {n: 6, title: 'json: preserve compensated decimal numbers across intermediate overflow and underflow', related: [153], accept: 'Parse both reported compensated numbers as 1.0, or reject explicitly documented unsupported forms; retain correct normal/subnormal conversion.'}
  {n: 7, title: 'json: validate raw UTF-8 string bytes or expose an explicit checked parser contract', related: [152], accept: 'Test invalid lead/continuation bytes, overlong forms, surrogate code points, and out-of-range scalars alongside valid UTF-8 and escape sequences.'}
  {n: 8, title: 'docs: finish stdlib signature, example, and sorting-complexity corrections', related: [162 166], accept: 'Correct close_fd and respond signatures/contracts, repair sort/in examples, describe typed merge sort separately from raw insertion sort, and document math submodule APIs.'}
  {n: 9, title: 'docs: validate partial-example exemptions, expected output, and LLM code snippets', related: [164], accept: 'Require reviewable fragment exemptions, add expected-output assertions, and include suitable llms.txt/llms-full.txt examples in validation without breaking legitimate fragments.'}
  {n: 10, title: 'docs/llms: reconcile completeness claims with API coverage and parser state contracts', related: [165], accept: 'Provide comprehensive API coverage or accurately label and link a curated guide; document JSON parser reentrancy/threading assumptions and relevant I/O/lifetime contracts.'}
]
if ($sections | length) != 10 { error make {msg: 'Expected 10 report findings'} }
let issues = ($specs | each { |spec|
  let section = ($sections | where capture0 == ($spec.n | into string) | first)
  mut content = $section.capture2
  let links = ($content | parse -r '\]\(([^)]+)\)' | get capture0 | uniq)
  for link in $links {
    if not ($link | str starts-with 'https://') {
      let target = if ($link | str starts-with '../../') {
        $repo + '/blob/' + $revision + '/' + ($link | str substring 6..)
      } else {
        $repo + '/blob/master/audits/2026-10-13-rerun/' + $link
      }
      $content = ($content | str replace --all ('](' + $link + ')') ('](' + $target + ')'))
    }
  }
  let related = if ($spec.related | is-empty) { '' } else { "\nRelated completed work: " + ($spec.related | each { |n| '#' + ($n | into string) } | str join ', ') + ". This follow-up isolates the remaining scope verified after those repairs.\n" }
  let report_link = '[Full audit report](' + $repo + '/blob/master/audits/2026-10-13-rerun/report.md)'
  let body = $"Audit finding ($spec.n): **($section.capture1)**\n\nVerified against `edva 1.1.1+b8e2267`, source revision `($revision)`, on 2026-10-13. ($report_link). Issues are tracked in Gitea; source and reproductions are hosted on GitHub.\n\n($content | str trim)\n\nAcceptance criteria:\n\n- [ ] ($spec.accept)\n- [ ] Add regression coverage appropriate to this finding and update affected contracts/reference text.\n($related)"
  {finding: $spec.n, title: $spec.title, body: $body}
})
$issues | to json | save -f ($folder | path join 'issue-drafts.json')
$issues | select finding title | print
