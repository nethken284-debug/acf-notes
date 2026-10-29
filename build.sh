#!/bin/bash
# index.html 係 Artifact 發布版（冇 doctype/head/body，發布時自動加）。
# 呢個 script 包成完整 HTML → docs/index.html，俾 GitHub Pages 用。
cd "$(dirname "$0")"
mkdir -p docs
{
  echo '<!doctype html>'
  echo '<html lang="zh-Hant">'
  echo '<head>'
  echo '<meta charset="utf-8">'
  echo '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">'
  echo '<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}img{max-width:100%}[hidden]{display:none!important}</style>'
  cat index.html
  echo '</html>'
} > docs/index.html
echo "built docs/index.html"
