#!/bin/bash
# Converts HANDOVER.md to HANDOVER.html with Wikipedia-like minimal CSS
# Single source of truth: Edit HANDOVER.md, then run this script

INPUT="HANDOVER.md"
OUTPUT="HANDOVER.html"
CSS="handover-style.css"

# Social media / OG settings (use &amp; for ampersand in HTML)
OG_TITLE="Workshop Takeaways and Home Setup Guide"
OG_DESC="Franz Enzenhofer Vibe Coding Workshop - Learn to build with AI using Claude Code and OpenAI Codex"
OG_IMAGE="https://yearendworkshops2025-cloud.github.io/workshop-lessons/images/vibe-coding-workflow.png"
OG_URL="https://yearendworkshops2025-cloud.github.io/workshop-lessons/HANDOVER.html"

# Check if pandoc is installed
if ! command -v pandoc &> /dev/null; then
    echo "Installing pandoc..."
    brew install pandoc
fi

# Convert MD to HTML with pandoc
# Note: No --metadata title to avoid duplicate h1
# Images are referenced by path (not embedded) since we're hosted on GitHub Pages
pandoc "$INPUT" \
    --standalone \
    --css="$CSS" \
    -o "$OUTPUT"

# Make all external links open in new tab
sed -i '' 's/<a href="http/<a target="_blank" rel="noopener" href="http/g' "$OUTPUT"

# Add Open Graph and Twitter Card meta tags for social media sharing
# Use perl for reliable multi-line insertion before </head>
OG_TAGS="<meta property=\"og:type\" content=\"website\">
<meta property=\"og:title\" content=\"$OG_TITLE\">
<meta property=\"og:description\" content=\"$OG_DESC\">
<meta property=\"og:image\" content=\"$OG_IMAGE\">
<meta property=\"og:url\" content=\"$OG_URL\">
<meta name=\"twitter:card\" content=\"summary_large_image\">
<meta name=\"twitter:title\" content=\"$OG_TITLE\">
<meta name=\"twitter:description\" content=\"$OG_DESC\">
<meta name=\"twitter:image\" content=\"$OG_IMAGE\">
<meta name=\"description\" content=\"$OG_DESC\">"

perl -i -pe "s|</head>|$OG_TAGS\n</head>|" "$OUTPUT"

# Add Copy All button and code block copy buttons after <body>
# Create temp file with the injection content
cat > /tmp/handover-inject.txt << 'INJECT_EOF'
<div id="copy-container" style="background:#f8f9fa;border:1px solid #a2a9b1;padding:12px 16px;margin:0 0 20px 0;border-radius:4px;display:flex;justify-content:space-between;align-items:center;"><span style="color:#222;font-size:14px;">Copy this entire guide and paste into Claude Code or Codex</span><button id="copy-btn" onclick="copyAll()" style="background:#36c;color:white;border:none;padding:8px 16px;border-radius:3px;cursor:pointer;font-size:14px;">Copy All</button></div>
<style>
pre{position:relative}
pre .copy-code{position:absolute;top:4px;right:4px;background:#36c;color:white;border:none;padding:4px 8px;border-radius:3px;cursor:pointer;font-size:11px;opacity:0.7}
pre .copy-code:hover{opacity:1}
pre:hover .copy-code{opacity:0.9}
pre .copy-code.copy-full{background:#5a3}
</style>
<script>
function copyAll(){const content=document.body.innerText;navigator.clipboard.writeText(content).then(()=>{const btn=document.getElementById("copy-btn");btn.textContent="Copied!";btn.style.background="#14866d";setTimeout(()=>{btn.textContent="Copy All";btn.style.background="#36c";},2000);}).catch(err=>alert("Copy failed: "+err));}
document.addEventListener("DOMContentLoaded",()=>{document.querySelectorAll("pre").forEach(pre=>{const code=pre.querySelector("code")||pre;const isMarkdown=code.classList.contains("sourceCode")&&code.classList.contains("markdown");const btn=document.createElement("button");btn.className=isMarkdown?"copy-code copy-full":"copy-code";btn.textContent=isMarkdown?"Copy All":"Copy";btn.onclick=()=>{let text=code.innerText;if(!isMarkdown){text=text.split("\n").filter(line=>!line.trim().startsWith("#")).join("\n").trim();}navigator.clipboard.writeText(text).then(()=>{btn.textContent="Copied!";btn.style.background="#14866d";setTimeout(()=>{btn.textContent=isMarkdown?"Copy All":"Copy";btn.style.background=isMarkdown?"#5a3":"#36c";},1500);});};pre.appendChild(btn);});});
</script>
INJECT_EOF

# Use Python for reliable multi-line insertion
python3 << 'PYEOF'
import sys
with open('/tmp/handover-inject.txt', 'r') as f:
    inject = f.read()
with open('HANDOVER.html', 'r') as f:
    html = f.read()
html = html.replace('<body>', '<body>\n' + inject, 1)
with open('HANDOVER.html', 'w') as f:
    f.write(html)
PYEOF
rm /tmp/handover-inject.txt

echo "✅ Converted $INPUT → $OUTPUT"
echo "📱 Social media tags added (og:image, twitter:card)"
echo "Open with: open $OUTPUT"
