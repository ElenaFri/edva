#!/usr/bin/env nu
# tools/check_docs.nu — validates documentation evidence, generated artifacts,
# and code examples.

def root [] {
    ($env.FILE_PWD | path dirname)
}

def check_evidence [root_dir: string] {
    let qmd_files = (glob ($root_dir | path join "doc/**/*.qmd"))
    mut missing = []
    mut total_anchors = 0

    for file in $qmd_files {
        let content = (open --raw $file)
        if not ($content | str starts-with "---") {
            continue
        }
        let parts = ($content | split row "---")
        if ($parts | length) < 3 {
            continue
        }
        let frontmatter = ($parts | get 1)
        let ev_lines = ($frontmatter | lines | where { |l| $l =~ '^\s*evidence:' })
        if ($ev_lines | length) == 0 {
            continue
        }

        # Extract all `path` references inside backticks
        let matches = ($content | parse -r '`([^`\n]+)`')
        # Only take matches in the frontmatter portion
        let fm_matches = ($frontmatter | parse -r '`([^`\n]+)`')
        for row in $fm_matches {
            let raw = $row.capture0
            # Strip anchors like #L12, :10-20, §1.6
            let clean = (
                $raw
                | split row "#" | first
                | split row ":" | first
                | split row " §" | first
                | str trim
            )
            if ($clean | is-empty) {
                continue
            }
            $total_anchors = $total_anchors + 1
            let target = ($root_dir | path join $clean)
            if ($clean | str contains "*") {
                let glob_matches = (glob $target)
                if ($glob_matches | length) == 0 {
                    $missing = ($missing | append {
                        page: ($file | path relative-to $root_dir),
                        raw: $raw,
                        resolved: $clean,
                    })
                }
            } else {
                if not ($target | path exists) {
                    $missing = ($missing | append {
                        page: ($file | path relative-to $root_dir),
                        raw: $raw,
                        resolved: $clean,
                    })
                }
            }
        }
    }

    {
        total_pages: ($qmd_files | length),
        total_anchors: $total_anchors,
        missing: $missing,
    }
}

def check_doc_examples [root_dir: string, compile: bool] {
    let edva = ($root_dir | path join "edva")
    if $compile and not ($edva | path exists) {
        print -e $"Error: Requested example compilation (--compile-examples), but '($edva)' binary was not found. Please build edva first."
        exit 1
    }
    let can_compile = $compile
    let qmd_files = (glob ($root_dir | path join "doc/**/*.qmd") | sort)
    let doc_files = ($qmd_files | append [
        ($root_dir | path join "GRAMMAR.md"),
        ($root_dir | path join "doc/llms-full.txt"),
        ($root_dir | path join "doc/llms.txt"),
    ] | where { |f| $f | path exists })

    mut complete_count = 0
    mut run_count = 0
    mut partial_count = 0
    mut negative_count = 0
    mut unclassified = []
    mut failed_examples = []

    for file in $doc_files {
        let content = (open --raw $file)
        let blocks = ($content | parse -r '(?ms)^```(?:dva|\{\.dva|\{dva)([^\n]*)\n(.*?)```')
        for block in $blocks {
            let header = ($block.capture0 | str trim)
            let body = $block.capture1
            let page_rel = ($file | path relative-to $root_dir)

            let is_run = (
                ($header =~ '\brun\b') or
                ($header =~ '\b\.run\b') or
                ($body =~ '(?m)^\s*//\s*@?run\b')
            )
            let is_complete = (
                not $is_run and (
                    ($header =~ '\bcomplete\b') or
                    ($header =~ '\b\.complete\b') or
                    ($body =~ '(?m)^\s*//\s*@?complete\b')
                )
            )
            let is_partial = (
                not $is_run and not $is_complete and (
                    ($header =~ '\b(partial|fragment|skip)\b') or
                    ($header =~ '\b\.(partial|fragment|skip)\b') or
                    ($body =~ '(?m)^\s*//\s*@?(partial|fragment|skip)\b')
                )
            )
            let is_negative = (
                not $is_run and not $is_complete and not $is_partial and (
                    ($header =~ 'expected-error') or
                    ($header =~ 'compile-fail') or
                    ($body =~ '(?m)^\s*//\s*@?expected-error')
                )
            )

            if $is_negative {
                $negative_count = $negative_count + 1
                let header_err = ($header | parse -r 'expected-error[=:\s]+"?(E[0-9]{4}|[A-Za-z0-9_]+)"?')
                let header_err2 = ($header | parse -r 'error="?(E[0-9]{4}|[A-Za-z0-9_]+)"?')
                let body_err = ($body | parse -r '//\s*@?expected-error[=:\s]+"?(E[0-9]{4}|[A-Za-z0-9_]+)"?')
                let expected = if ($header_err | length) > 0 {
                    $header_err | first | get capture0
                } else if ($header_err2 | length) > 0 {
                    $header_err2 | first | get capture0
                } else if ($body_err | length) > 0 {
                    $body_err | first | get capture0
                } else {
                    ""
                }

                if ($expected | is-empty) {
                    $failed_examples = ($failed_examples | append {
                        page: $page_rel,
                        expected: "explicit error code (e.g. E3130)",
                        output: "Block marked expected-error but missing error code in header or body",
                    })
                } else if $can_compile {
                    let tmp = (mktemp -t doc_ex_XXXXXX.dva)
                    $body | save -f $tmp
                    let stem = ($tmp | path parse | get stem)
                    let res = (do { cd $root_dir; ^$edva -ir $tmp } | complete)
                    rm -f $tmp
                    rm -f ($root_dir | path join ($stem + ".ll"))
                    let combined = ($res.stdout + "\n" + $res.stderr)
                    if $res.exit_code == 0 {
                        $failed_examples = ($failed_examples | append {
                            page: $page_rel,
                            expected: $"compiler rejection with ($expected)",
                            output: "Block compiled successfully with exit code 0",
                        })
                    } else if not ($combined | str contains $expected) {
                        $failed_examples = ($failed_examples | append {
                            page: $page_rel,
                            expected: $"diagnostic containing ($expected)",
                            output: $combined,
                        })
                    }
                }
            } else if $is_run {
                $run_count = $run_count + 1
                if $can_compile {
                    let tmp = (mktemp -t doc_ex_XXXXXX.dva)
                    $body | save -f $tmp
                    let stem = ($tmp | path parse | get stem)
                    let tmp_bin = ($root_dir | path join $stem)
                    let comp = (do { cd $root_dir; ^$edva -o $tmp_bin $tmp } | complete)
                    rm -f $tmp
                    if $comp.exit_code != 0 {
                        $failed_examples = ($failed_examples | append {
                            page: $page_rel,
                            expected: "clean compile",
                            output: ($comp.stdout + "\n" + $comp.stderr),
                        })
                    } else {
                        let run_res = (do { ^timeout 5 $tmp_bin } | complete)
                        rm -f $tmp_bin
                        rm -f ($root_dir | path join ($stem + ".ll"))
                        if $run_res.exit_code != 0 {
                            $failed_examples = ($failed_examples | append {
                                page: $page_rel,
                                expected: "execution exit code 0",
                                output: ($run_res.stdout + "\n" + $run_res.stderr),
                            })
                        } else {
                            let header_out = ($header | parse -r 'output="([^"]+)"')
                            let body_outs = ($body | parse -r '(?m)^\s*//\s*(?:=>|@output:?)\s*(.+)$')
                            let expected_out = if ($header_out | length) > 0 {
                                $header_out | first | get capture0 | str trim
                            } else if ($body_outs | length) > 0 {
                                $body_outs | each { |r| $r.capture0 | str trim } | str join "\n"
                            } else {
                                ""
                            }
                            if not ($expected_out | is-empty) {
                                let actual_out = ($run_res.stdout | str trim)
                                if $actual_out != $expected_out {
                                    $failed_examples = ($failed_examples | append {
                                        page: $page_rel,
                                        expected: $"output: ($expected_out)",
                                        output: $"actual: ($actual_out)",
                                    })
                                }
                            }
                        }
                    }
                }
            } else if $is_complete {
                $complete_count = $complete_count + 1
                if $can_compile {
                    let tmp = (mktemp -t doc_ex_XXXXXX.dva)
                    $body | save -f $tmp
                    let stem = ($tmp | path parse | get stem)
                    let res = (do { cd $root_dir; ^$edva -ir $tmp } | complete)
                    rm -f $tmp
                    rm -f ($root_dir | path join ($stem + ".ll"))
                    if $res.exit_code != 0 {
                        $failed_examples = ($failed_examples | append {
                            page: $page_rel,
                            expected: "clean compile",
                            output: ($res.stdout + "\n" + $res.stderr),
                            snippet: ($body | lines | first | default ""),
                        })
                    }
                }
            } else if $is_partial {
                $partial_count = $partial_count + 1
                let has_reason = (
                    ($header =~ '(reason|exemption|why)\s*=') or
                    ($body =~ '(?m)^\s*//\s*@?(reason|exemption|why|partial|fragment|skip):?') or
                    ($header =~ '\b(partial|fragment|skip)\s*=\s*"?[^"]+"?') or
                    ($body =~ '(?m)^\s*//') or
                    ($page_rel | str ends-with ".qmd")
                )
                if not $has_reason {
                    $failed_examples = ($failed_examples | append {
                        page: $page_rel,
                        expected: "partial exemption reason (e.g. reason=\"...\" or // comment)",
                        output: "Partial block lacks an exemption reason or contextual comment",
                    })
                }
            } else {
                let first_line = ($body | lines | first | default "")
                $unclassified = ($unclassified | append {
                    page: $page_rel,
                    snippet: $first_line,
                })
            }
        }
    }

    {
        complete: $complete_count,
        run: $run_count,
        partial: $partial_count,
        negative: $negative_count,
        unclassified: $unclassified,
        failed: $failed_examples,
    }
}

def main [--compile-examples] {
    let root_dir = (root)
    print "Validating documentation evidence anchors..."
    let ev = (check_evidence $root_dir)
    print $"  Scanned ($ev.total_pages) pages, ($ev.total_anchors) anchors."

    if ($ev.missing | length) > 0 {
        print -e $"Error: ($ev.missing | length) missing evidence anchors found:"
        for m in $ev.missing {
            print -e $"  ($m.page): `($m.raw)` -> ($m.resolved)"
        }
        exit 1
    }
    print "  All evidence anchors resolved successfully."

    print "Validating operator & LLM table sync..."
    let opgen_script = ($root_dir | path join "tools/opgen/main.nu")
    let op_res = (do { ^nu $opgen_script --check } | complete)
    if $op_res.exit_code != 0 {
        print -e $op_res.stderr
        print -e $op_res.stdout
        exit 1
    }
    print "  Operator tables in sync."

    print "Checking documentation code examples..."
    let ex = (check_doc_examples $root_dir $compile_examples)
    let unclass_count = ($ex.unclassified | length)
    let failed_count = ($ex.failed | length)
    print $"  Examples: ($ex.complete) complete, ($ex.run) run, ($ex.partial) partial, ($ex.negative) negative, ($unclass_count) unclassified."

    mut has_err = false
    if $unclass_count > 0 {
        $has_err = true
        print -e $"Error: ($unclass_count) unclassified code blocks found [every block must declare complete, run, partial, or expected-error]:"
        for u in $ex.unclassified {
            print -e $"  ($u.page): `($u.snippet)`"
        }
    }

    if $failed_count > 0 {
        $has_err = true
        print -e $"Error: ($failed_count) code examples failed validation:"
        for f in $ex.failed {
            print -e $"  ($f.page): expected ($f.expected)\n($f.output)"
        }
    }

    if $has_err {
        exit 1
    }

    print "Documentation checks passed successfully."
}
