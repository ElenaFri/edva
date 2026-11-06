let folder = $env.FILE_PWD
let publication = (open ($folder | path join 'gitea-publication.json'))
mut out = "# Gitea tracking for the 2026-10-13 Edva audit\n\nMilestone: [Edva correctness and documentation audit follow-ups](https://gitea.gde.to/ike/dva/milestones/7) (18 open issues). Repository source and the report are published to [GitHub](https://github.com/ElenaFri/edva).\n\n| Finding | Gitea issue | Topic |\n|---:|---|---|"
for issue in $publication.issues {
  $out = ($out + "\n| " + ($issue.finding | into string) + " | [#" + ($issue.number | into string) + "](" + $issue.html_url + ") | " + $issue.title + " |")
}
$out = ($out + "\n\nFindings 13, 14, 16, and 17 are follow-ups to closed issues #136, #137, #141, #138, and #140; the Gitea issue descriptions explain the remaining scope. The milestone and issues are managed in Gitea. Commits go to the configured GitHub origin.\n")
$out | save -f ($folder | path join 'issues.md')
