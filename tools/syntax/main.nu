#!/usr/bin/env nu
# tools/syntax/main.nu — Unified syntax generator for Dva
# Generates:
#   1. doc/dva.xml                       (KDE Kate XML for Pandoc / Quarto)
#   2. tools/vscode/syntaxes/dva.tmLanguage.json (TextMate JSON for VS Code)
#   3. tools/vscode/package.json         (VS Code extension manifest)
#   4. tools/vscode/language-configuration.json
#   5. Helix synchronization & grammar compilation

def root [] {
  let base = ($env.FILE_PWD? | default $env.PWD | path expand)
  if ($base | str ends-with "tools/syntax") {
    $base | path join ".." | path join ".." | path expand
  } else {
    $base
  }
}

# -----------------------------------------------------------------------------
# 1. KDE Kate XML Generator (for Pandoc / Quarto)
# -----------------------------------------------------------------------------

export def gen-quarto [] {
  let r = (root)
  let tmpl_path = ($r | path join "tools/syntax/templates/dva.xml.template")
  let out_path = ($r | path join "doc/dva.xml")

  if not ($tmpl_path | path exists) {
    print $"[!] Template not found at ($tmpl_path)"
    return
  }

  let content = (open $tmpl_path)
  $content | save -f $out_path
  print $"[✓] Generated Quarto / Pandoc Kate XML at ($out_path)"
}

# -----------------------------------------------------------------------------
# 2. VS Code TextMate Grammar Generator
# -----------------------------------------------------------------------------

export def gen-vscode [] {
  let r = (root)
  let vs_dir = ($r | path join "tools/vscode")
  let syn_dir = ($vs_dir | path join "syntaxes")
  mkdir $syn_dir

  let tmlanguage = {
    "$schema": "https://raw.githubusercontent.com/martinring/tmlanguage/master/tmlanguage.json",
    "name": "Dva",
    "scopeName": "source.dva",
    "patterns": [
      { "include": "#comments" },
      { "include": "#strings" },
      { "include": "#characters" },
      { "include": "#ramification_constants" },
      { "include": "#ramification_delimiters" },
      { "include": "#ramification_returns" },
      { "include": "#directives" },
      { "include": "#types" },
      { "include": "#control" },
      { "include": "#numbers" },
      { "include": "#operators" },
      { "include": "#identifiers" }
    ],
    "repository": {
      "comments": {
        "patterns": [
          {
            "name": "comment.line.double-slash.dva",
            "match": "//.*$"
          },
          {
            "name": "comment.block.dva",
            "begin": "/\\*",
            "end": "\\*/"
          }
        ]
      },
      "strings": {
        "patterns": [
          {
            "name": "string.quoted.triple.dva",
            "begin": "\"\"\"",
            "end": "\"\"\"",
            "patterns": [
              {
                "name": "constant.character.escape.dva",
                "match": "\\\\."
              },
              {
                "name": "meta.interpolation.dva",
                "begin": "\\$\\{",
                "beginCaptures": {
                  "0": { "name": "punctuation.section.interpolation.begin.dva" }
                },
                "end": "\\}",
                "endCaptures": {
                  "0": { "name": "punctuation.section.interpolation.end.dva" }
                },
                "patterns": [
                  { "include": "$self" }
                ]
              }
            ]
          },
          {
            "name": "string.quoted.double.dva",
            "begin": "\"",
            "end": "\"",
            "patterns": [
              {
                "name": "constant.character.escape.dva",
                "match": "\\\\."
              },
              {
                "name": "meta.interpolation.dva",
                "begin": "\\$\\{",
                "beginCaptures": {
                  "0": { "name": "punctuation.section.interpolation.begin.dva" }
                },
                "end": "\\}",
                "endCaptures": {
                  "0": { "name": "punctuation.section.interpolation.end.dva" }
                },
                "patterns": [
                  { "include": "$self" }
                ]
              }
            ]
          }
        ]
      },
      "characters": {
        "patterns": [
          {
            "name": "string.quoted.single.dva",
            "match": "'(\\\\.|[^'\\\\])'"
          }
        ]
      },
      "ramification_constants": {
        "patterns": [
          {
            "name": "constant.numeric.ramification.dva",
            "match": "<\\+\\+>|<-->|<\\+>|<->"
          }
        ]
      },
      "ramification_delimiters": {
        "patterns": [
          {
            "name": "constant.language.ramification.delimiter.dva",
            "match": "<\\+|\\+>|<-|->"
          }
        ]
      },
      "ramification_returns": {
        "patterns": [
          {
            "name": "constant.language.ramification.return.dva",
            "match": "\\|\\+\\+>|\\|-->|\\|\\+>|\\|->"
          }
        ]
      },
      "directives": {
        "patterns": [
          {
            "name": "meta.import.dva",
            "match": "(#use(?:-dynamic)?(?:\\s*\\((?:dynamic|import|,|\\s)*\\))?)\\s+(\"[^\"]*\"|[^\\s;]+)",
            "captures": {
              "1": { "name": "keyword.control.directive.dva" },
              "2": { "name": "string.quoted.other.import.dva" }
            }
          },
          {
            "name": "keyword.control.directive.dva",
            "match": "#(!|(?:use|type|packed|align|foreign|pragma|public|pub|private|export|spawn|join|exit|error|warn|size)\\b)"
          }
        ]
      },
      "types": {
        "patterns": [
          {
            "name": "storage.type.primitive.dva",
            "match": "<\\|>|<>|<\\.\\.>|\\(\\.\\.\\)|\\(\\)|\\b(Int|Float|String|Addr|Address|Rune|Builder|Error|Type|i1|i8|i16|i32|i64|u8|u16|u32|u64|f32|f64|float|double|void|ptr)\\b"
          }
        ]
      },
      "control": {
        "patterns": [
          {
            "name": "keyword.control.repeat.dva",
            "match": "(--[>^][0-9]*|@|@@)"
          },
          {
            "name": "keyword.control.escape.dva",
            "match": "(>--|--:|--\\|)"
          },
          {
            "name": "keyword.control.conditional.dva",
            "match": "(!\\||\\||\\[|\\])"
          }
        ]
      },
      "numbers": {
        "patterns": [
          {
            "name": "constant.numeric.float.dva",
            "match": "(?<![a-zA-Z0-9_])-?[0-9][0-9_]*\\.[0-9][0-9_]*([eE][-+]?[0-9_]+)?(f32|f64|f|F)?\\b"
          },
          {
            "name": "constant.numeric.hex.dva",
            "match": "(?<![a-zA-Z0-9_])-?0x[0-9a-fA-F_]+(i8|i16|i32|i64|u8|u16|u32|u64)?\\b"
          },
          {
            "name": "constant.numeric.octal.dva",
            "match": "(?<![a-zA-Z0-9_])-?0o[0-7_]+(i8|i16|i32|i64|u8|u16|u32|u64)?\\b"
          },
          {
            "name": "constant.numeric.binary.dva",
            "match": "(?<![a-zA-Z0-9_])-?0b[01_]+(i8|i16|i32|i64|u8|u16|u32|u64)?\\b"
          },
          {
            "name": "constant.numeric.integer.dva",
            "match": "(?<![a-zA-Z0-9_])-?[0-9][0-9_]*(i8|i16|i32|i64|u8|u16|u32|u64)?\\b"
          }
        ]
      },
      "operators": {
        "patterns": [
          {
            "name": "keyword.operator.range.dva",
            "match": "(\\.\\.\\.|\\.\\.=|\\.\\.)"
          },
          {
            "name": "keyword.operator.function.dva",
            "match": "(=>|!=>)"
          },
          {
            "name": "keyword.operator.assignment.dva",
            "match": "(::=|:=|\\+=|=)"
          },
          {
            "name": "keyword.operator.apply.dva",
            "match": "(\\$>>|\\$>|\\$)"
          },
          {
            "name": "keyword.operator.logical.dva",
            "match": "(&&|\\|\\|)"
          },
          {
            "name": "keyword.operator.comparison.dva",
            "match": "(==|!=|!<|!>|<=|>=|<|>)"
          },
          {
            "name": "keyword.operator.bitwise.dva",
            "match": "(\\.<\\.|\\.>\\.|\\.\\|\\.|\\.\\^\\.|\\.&\\.|\\.!\\.)"
          },
          {
            "name": "keyword.operator.arithmetic.dva",
            "match": "(\\+|-|\\*|/|%)"
          },
          {
            "name": "keyword.operator.unary.dva",
            "match": "(\\+\\+|\\?\\?|\\?|~~|&|!)"
          },
          {
            "name": "keyword.operator.postfix.dva",
            "match": "(!!|--!)"
          },
          {
            "name": "keyword.operator.range.dva",
            "match": "(\\.\\.)"
          },
          {
            "name": "keyword.operator.namespace.dva",
            "match": "(::)"
          }
        ]
      },
      "identifiers": {
        "patterns": [
          {
            "name": "variable.other.mutable.dva",
            "match": "\\b[a-zA-Z_][a-zA-Z0-9_]*'+"
          },
          {
            "name": "entity.name.type.variant.dva",
            "match": "\\b[A-Z][a-zA-Z0-9_]*\\b"
          },
          {
            "name": "variable.other.dva",
            "match": "\\b[a-z_][a-zA-Z0-9_]*\\b"
          }
        ]
      }
    }
  }

  let pkg = {
    "name": "dva-lang",
    "displayName": "Dva Language",
    "description": "Syntax highlighting and language support for the Dva programming language",
    "version": "0.1.0",
    "publisher": "dva",
    "engines": {
      "vscode": "^1.75.0"
    },
    "categories": ["Programming Languages"],
    "contributes": {
      "languages": [
        {
          "id": "dva",
          "aliases": ["Dva", "dva", "edva"],
          "extensions": [".dva"],
          "configuration": "./language-configuration.json"
        }
      ],
      "grammars": [
        {
          "language": "dva",
          "scopeName": "source.dva",
          "path": "./syntaxes/dva.tmLanguage.json"
        }
      ]
    }
  }

  let lang_cfg = {
    "comments": {
      "lineComment": "//",
      "blockComment": ["/*", "*/"]
    },
    "brackets": [
      ["{", "}"],
      ["[", "]"],
      ["(", ")"]
    ],
    "autoClosingPairs": [
      { "open": "{", "close": "}" },
      { "open": "[", "close": "]" },
      { "open": "(", "close": ")" },
      { "open": "\"", "close": "\"" },
      { "open": "'", "close": "'" }
    ],
    "surroundingPairs": [
      ["{", "}"],
      ["[", "]"],
      ["(", ")"],
      ["\"", "\""],
      ["'", "'"]
    ]
  }

  ($tmlanguage | to json -i 2) | save -f ($syn_dir | path join "dva.tmLanguage.json")
  ($pkg | to json -i 2) | save -f ($vs_dir | path join "package.json")
  ($lang_cfg | to json -i 2) | save -f ($vs_dir | path join "language-configuration.json")

  print $"[✓] Generated VS Code TextMate grammar and extension in ($vs_dir)"
}

# -----------------------------------------------------------------------------
# 3. Helix Synchronizer
# -----------------------------------------------------------------------------

export def sync-helix [] {
  let r = (root)
  let ts_dir = if (($r | path join "../tree-sitter-edva") | path exists) {
    $r | path join "../tree-sitter-edva" | path expand
  } else {
    $r | path join "../tree-sitter-dva" | path expand
  }
  let hx_edva_dir = ($env.HOME | path join ".config/helix/runtime/queries/edva")
  let hx_dva_dir = ($env.HOME | path join ".config/helix/runtime/queries/dva")
  let repo_hx_dir = ($r | path join "tools/helix-edva/queries")

  if not ($ts_dir | path exists) {
    print $"[!] tree-sitter-edva not found at ($ts_dir)"
    return
  }

  mkdir $hx_edva_dir
  mkdir $hx_dva_dir
  mkdir $repo_hx_dir
  let queries = ["highlights.scm", "indents.scm", "textobjects.scm"]
  for q in $queries {
    let src = ($ts_dir | path join $"queries/($q)")
    if ($src | path exists) {
      try { cp -f $src ($hx_edva_dir | path join $q) }
      try { cp -f $src ($hx_dva_dir | path join $q) }
      try { cp -f $src ($repo_hx_dir | path join $q) }
      print $"[✓] Synced Helix query ($q)"
    }
  }

  print "[*] Building Helix grammar edva.so..."
  let gram_dir = ($env.HOME | path join ".config/helix/runtime/grammars")
  let build_hx_dir = ($r | path join "build/helix")
  mkdir $gram_dir
  mkdir $build_hx_dir
  let parser_c = ($ts_dir | path join "src/parser.c")
  let scanner_c = ($ts_dir | path join "src/scanner.c")
  let inc_dir = ($ts_dir | path join "src")
  let out_so = ($gram_dir | path join "edva.so")
  let res = (do { ^cc -fPIC -shared -O2 -I $inc_dir $parser_c $scanner_c -o $out_so } | complete)
  if $res.exit_code == 0 {
    try { cp -f $out_so ($gram_dir | path join "dva.so") }
    try { cp -f $out_so ($build_hx_dir | path join "edva.so") }
    print $"[✓] Helix edva grammar built and installed to ($out_so)"
  } else {
    print $"[!] Helix build warning: ($res.stderr)"
  }
}

# -----------------------------------------------------------------------------
# 4. Doc Renderer (Quarto)
# -----------------------------------------------------------------------------

export def render-docs [] {
  let r = (root)
  let doc_dir = ($r | path join "doc")
  let build_dir = ($doc_dir | path join "_build")
  let subdirs = [
    "start", "guide", "compiler", "contributing",
    "reference/language", "reference/stdlib"
  ]
  for d in $subdirs {
    mkdir ($build_dir | path join $d)
  }

  print "[*] Rendering documentation with Quarto..."
  let res = (do { ^quarto render $doc_dir } | complete)
  if $res.exit_code == 0 {
    print $"[✓] Documentation rendered successfully at ($doc_dir)/_build/index.html"
  } else {
    print $"[!] Quarto render error: ($res.stderr)\n($res.stdout)"
  }
}

# -----------------------------------------------------------------------------
# CLI Entry Point
# -----------------------------------------------------------------------------

def main [
  --all(-a)       # Generate Quarto XML, VS Code grammar, and sync Helix
  --quarto(-q)    # Generate doc/dva.xml for Quarto / Pandoc
  --vscode(-v)    # Generate tools/vscode TextMate grammar
  --helix(-h)     # Sync Helix queries and rebuild grammar
  --render(-r)    # Render documentation with Quarto
] {
  let do_all = $all or (not $quarto and not $vscode and not $helix and not $render)

  if $do_all or $quarto {
    gen-quarto
  }
  if $do_all or $vscode {
    gen-vscode
  }
  if $do_all or $helix {
    sync-helix
  }
  if $render {
    render-docs
  }
}
