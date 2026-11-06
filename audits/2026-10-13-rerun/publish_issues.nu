# Explicitly run this script to publish the prepared audit findings to Gitea.
let folder = $env.FILE_PWD
let login = (open /home/ike/.config/tea/config.yml | get logins | where name == leandra | first)
let headers = [Authorization $"token ($login.token)"]
let base = 'https://gitea.gde.to/api/v1/repos/ike/dva'
let title = 'Edva audit rerun — 2026-10-13 (b8e2267)'
let existing = (http get --headers $headers ($base + '/milestones?state=all&limit=50') | where title == $title)
let milestone = if ($existing | is-empty) {
  http post --headers $headers --content-type application/json ($base + '/milestones') {
    title: $title
    description: 'Ten verified finding groups from the rebuilt b8e2267 audit: HTTP parsing/framing, console writes, reader status, JSON conversion/UTF-8, Quarto validation, and LLM-reference coverage. Report and reproductions: https://github.com/ElenaFri/edva/tree/master/audits/2026-10-13-rerun'
    state: 'open'
  }
} else { $existing | first }
mut publication = {milestone: ($milestone | select id title), issues: []}
$publication | to json | save -f ($folder | path join 'gitea-publication.json')
let known = (http get --headers $headers ($base + '/issues?state=open&limit=50'))
for draft in (open ($folder | path join 'issue-drafts.json')) {
  let duplicate = ($known | where title == $draft.title)
  let issue = if ($duplicate | is-empty) {
    http post --headers $headers --content-type application/json ($base + '/issues') {
      title: $draft.title
      body: $draft.body
      milestone: $milestone.id
    }
  } else { $duplicate | first }
  let row = {finding: $draft.finding, number: $issue.number, title: $issue.title, url: $issue.html_url}
  $publication.issues = ($publication.issues | append $row)
  $publication | to json | save -f ($folder | path join 'gitea-publication.json')
  print ($row | to json -r)
}
