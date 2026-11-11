#!/usr/bin/env nu
# tools/diag_coverage.nu — diagnostic-code coverage of the negative test suite.
#
# Edva is a self-hosted compiler that emits object code directly through the LLVM
# C API with no debug-line or coverage metadata, so standard source-based line
# coverage (llvm-cov / gcov) is not available. This tool measures a coverage
# metric that IS meaningful for a compiler and computable today: the fraction of
# the DiagCode registry (the typed front-end error codes in src/diag.dva) that
# is actually triggered by the negative test suite (tests/fail/*.dva).
#
# It compiles every negative test with the built compiler, collects the E-codes
# it emits, intersects them with the registry, and writes a shields.io endpoint
# badge (coverage.json at the repo root) consumed by the README.
#
# Usage:
#   nu tools/diag_coverage.nu            # compute + write coverage.json + report
#   nu tools/diag_coverage.nu --check    # verify coverage.json is in sync (exit 1
#                                        # when out of date)
#   nu tools/diag_coverage.nu --compiler ./edva   # override the compiler path

def root [] {
    $env.FILE_PWD | path dirname
}

# The registered diagnostic codes: the DiagCode enum in src/diag.dva, which is
# the single source of truth for front-end codes (lexer E1xxx, parser E2xxx,
# type checker E3xxx).
def registry_codes [] {
    let src = (open --raw ((root) | path join "src/diag.dva") | lines)
    mut codes = []
    mut inblock = false
    for l in $src {
        let t = ($l | str trim)
        if (not $inblock) {
            if ($l | str contains "#type DiagCode <") { $inblock = true }
            continue
        }
        if $t == ">" { break }
        if ($t =~ '^E\d{4}$') { $codes = ($codes | append $t) }
    }
    $codes | uniq | sort
}

# Compile every negative test and collect the distinct E-codes the compiler
# emits. Module fixtures (mod_*) are not standalone tests and are skipped, matching
# run_tests.sh.
def emitted_codes [compiler: string] {
    let files = (
        glob ((root) | path join "tests/fail/*.dva")
        | where {|p| not (($p | path basename) | str starts-with "mod_") }
        | sort
    )
    mut found = []
    for f in $files {
        let r = (do { ^$compiler $f -c -o "/tmp/dva_cov.o" } | complete)
        let out = $"($r.stdout)($r.stderr)"
        let codes = ($out | lines | each {|ln| ($ln | parse -r '(?<c>E\d{4})').c } | flatten)
        $found = ($found | append $codes)
    }
    $found | uniq | sort
}

def color_for [pct: int] {
    if $pct >= 90 { "brightgreen"
    } else if $pct >= 80 { "green"
    } else if $pct >= 70 { "yellowgreen"
    } else if $pct >= 60 { "yellow"
    } else if $pct >= 50 { "orange"
    } else { "red" }
}

def main [--check, --compiler: string = "./edva"] {
    let reg = (registry_codes)
    let emitted = (emitted_codes $compiler)

    let covered = ($reg | where {|c| $c in $emitted })
    let uncovered = ($reg | where {|c| not ($c in $emitted) })
    # Front-end codes the suite triggers that are NOT in the registry (E4xxx
    # runtime / E5xxx codegen codes live outside the front-end registry by
    # design, so they are excluded).
    let unregistered = (
        $emitted | where {|c| (not ($c in $reg)) and ($c =~ '^E[123]\d{3}$') }
    )

    let total = ($reg | length)
    let cov = ($covered | length)
    let pct = ($cov * 100 / $total | math round | into int)

    let badge = {
        schemaVersion: 1,
        label: "diagnostics",
        message: $"($pct)%",
        color: (color_for $pct),
    }
    let json = ($badge | to json --indent 2)
    let json_path = ((root) | path join "coverage.json")

    if $check {
        let existing = (if ($json_path | path exists) { (open --raw $json_path | str trim) } else { "" })
        if ($json | str trim) != $existing {
            print "diag coverage: coverage.json out of date — run 'make coverage' and commit."
            print "  expected:"
            print ($json | str trim)
            print "  actual:"
            print $existing
            exit 1
        }
        print $"diag coverage: ($cov)/($total) registered codes exercised = ($pct)% \(coverage.json in sync\)."
    } else {
        $json | save -f $json_path
        print $"diag coverage: ($cov)/($total) registered codes exercised = ($pct)%."
        print $"wrote ($json_path)"
    }

    print $"uncovered \(($uncovered | length)\): ($uncovered | str join ', ')"
    if ($unregistered | length) > 0 {
        print $"NOTE: emitted but NOT registered in the DiagCode enum \(($unregistered | length)\): ($unregistered | str join ', ') — add them to src/diag.dva."
    }
}
