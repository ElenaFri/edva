-- doc/page-meta.lua
-- Pandoc filter for Edva documentation:
-- 1. Wraps all tables in <div class="table-wrapper"> for responsive, non-overlapping horizontal scrolling.
-- 2. Reads structured 'meta' frontmatter (audience, status, audited, evidence) and moves it into #quarto-margin-sidebar.

function Table(el)
  return pandoc.Div({el}, {class = 'table-wrapper'})
end

local function inlines_to_html(inlines)
  if not inlines then return "" end
  if type(inlines) == "string" then return inlines end
  local doc = pandoc.Pandoc({pandoc.Plain(inlines)})
  local html = pandoc.write(doc, "html")
  return (html:gsub("%s+$", ""))
end

function Pandoc(doc)
  local meta = doc.meta.meta
  if meta then
    local audience = inlines_to_html(meta.audience)
    local status = inlines_to_html(meta.status)
    local audited = inlines_to_html(meta.audited)
    local evidence = inlines_to_html(meta.evidence)

    if audited ~= "" and not audited:find("<code") then
      audited = string.format("<code>%s</code>", audited)
    end

    local rows = {}
    if audience ~= "" then
      table.insert(rows, string.format("<strong>Audience:</strong> %s", audience))
    end
    if status ~= "" then
      table.insert(rows, string.format("<strong>Status:</strong> %s", status))
    end
    if audited ~= "" then
      table.insert(rows, string.format("<strong>Audited:</strong> %s", audited))
    end
    if evidence ~= "" then
      table.insert(rows, string.format("<strong>Evidence:</strong> %s", evidence))
    end

    if #rows > 0 then
      local inner_html = table.concat(rows, "<br>\n")
      local html = string.format([[
<div class="page-meta page-meta-source" style="display:none;">
%s
</div>
<script>
document.addEventListener("DOMContentLoaded", function() {
  var meta = document.querySelector(".page-meta-source");
  var margin = document.getElementById("quarto-margin-sidebar");
  var main = document.querySelector("main.content");
  if (!meta) return;
  function placeMeta() {
    if (margin && window.getComputedStyle(margin).display !== "none") {
      margin.appendChild(meta);
    } else if (main) {
      main.appendChild(meta);
    }
    meta.style.display = "";
    meta.classList.remove("page-meta-source");
  }
  placeMeta();
  window.addEventListener("resize", placeMeta);
});
</script>
]], inner_html)
      table.insert(doc.blocks, pandoc.RawBlock("html", html))
    end
  end

  local runner_html = [[
<script>
document.addEventListener("DOMContentLoaded", function() {
  var PLAY_PORT = window.EDVA_PLAY_PORT || 8090;
  var PLAY_BASE = window.EDVA_PLAY_URL || (window.location.protocol + "//" + window.location.hostname + ":" + PLAY_PORT);
  var blocks = document.querySelectorAll("div.sourceCode.run pre.sourceCode.dva, pre.dva.run");
  blocks.forEach(function(pre) {
    if (pre.dataset.edvaEnhanced) return;
    pre.dataset.edvaEnhanced = "1";
    var wrap = pre.parentElement;
    var bar = document.createElement("div");
    bar.className = "edva-run-toolbar";
    bar.style.cssText = "display:flex;gap:8px;justify-content:flex-end;margin-top:4px;margin-bottom:8px;font-family:system-ui,-apple-system,sans-serif;font-size:12px;";
    var runBtn = document.createElement("button");
    runBtn.type = "button";
    runBtn.textContent = "▶ Run";
    runBtn.style.cssText = "background:#89b4fa;color:#11111b;border:0;border-radius:4px;padding:3px 10px;font-weight:600;cursor:pointer;";
    var playLink = document.createElement("a");
    playLink.textContent = "↗ Playground";
    playLink.target = "_blank";
    playLink.rel = "noopener";
    playLink.style.cssText = "background:#313244;color:#cdd6f4;border:1px solid #45475a;border-radius:4px;padding:3px 10px;text-decoration:none;";
    function codeText() { return (pre.innerText || pre.textContent || "").trim(); }
    playLink.href = PLAY_BASE + "/?code=" + encodeURIComponent(codeText());
    var outBox = document.createElement("pre");
    outBox.className = "edva-run-output";
    outBox.style.cssText = "display:none;background:#181825;color:#a6e3a1;border:1px solid #45475a;border-radius:6px;padding:10px;margin-top:4px;margin-bottom:12px;font-size:12.5px;white-space:pre-wrap;";
    runBtn.onclick = function() {
      runBtn.textContent = "Running...";
      outBox.style.display = "block";
      outBox.style.color = "#cdd6f4";
      outBox.textContent = "Compiling & running via edva-play...";
      fetch(PLAY_BASE + "/api/run", {
        method: "POST",
        headers: {"Content-Type": "application/json"},
        body: JSON.stringify({code: codeText(), target: "native"})
      }).then(function(r) { return r.json(); }).then(function(d) {
        outBox.style.color = d.ok ? "#a6e3a1" : "#f38ba8";
        var txt = (d.stdout || "") + (d.stderr ? "\n" + d.stderr : "");
        outBox.textContent = txt || (d.ok ? "(completed with exit code 0)" : "(failed)");
        runBtn.textContent = "▶ Run";
      }).catch(function() {
        outBox.style.color = "#f38ba8";
        outBox.textContent = "Could not connect to edva-play server at " + PLAY_BASE + " (start edva-ware/edva-play).";
        runBtn.textContent = "▶ Run";
      });
    };
    bar.appendChild(runBtn);
    bar.appendChild(playLink);
    wrap.insertAdjacentElement("afterend", outBox);
    wrap.insertAdjacentElement("afterend", bar);
  });
});
</script>
]]
  table.insert(doc.blocks, pandoc.RawBlock("html", runner_html))
  return doc
end
