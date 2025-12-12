#!/bin/bash
# Converts HANDOVER.md to HANDOVER.html with Wikipedia-like minimal CSS
# Single source of truth: Edit HANDOVER.md, then run this script

INPUT="HANDOVER.md"
OUTPUT="HANDOVER.html"
CSS="handover-style.css"

# Check if pandoc is installed
if ! command -v pandoc &> /dev/null; then
    echo "Installing pandoc..."
    brew install pandoc
fi

# Convert MD to HTML with pandoc, embedding the CSS
# Note: No --metadata title to avoid duplicate h1
pandoc "$INPUT" \
    --standalone \
    --embed-resources \
    --css="$CSS" \
    -o "$OUTPUT"

# Make all external links open in new tab
sed -i '' 's/<a href="http/<a target="_blank" rel="noopener" href="http/g' "$OUTPUT"

# Add Copy All button after <body>
COPY_BUTTON='<div id="copy-container" style="background:linear-gradient(135deg,#667eea 0%,#764ba2 100%);padding:12px 20px;margin:0 0 20px 0;border-radius:8px;display:flex;justify-content:space-between;align-items:center;box-shadow:0 2px 10px rgba(0,0,0,0.1);"><span style="color:white;font-weight:600;font-size:14px;">📋 Copy this entire guide and paste into Claude Code or Codex!</span><button id="copy-btn" onclick="copyAll()" style="background:white;color:#764ba2;border:none;padding:10px 20px;border-radius:6px;cursor:pointer;font-weight:600;font-size:14px;transition:all 0.2s;">Copy All Content</button></div><script>function copyAll(){const content=document.body.innerText;navigator.clipboard.writeText(content).then(()=>{const btn=document.getElementById(\"copy-btn\");btn.textContent=\"✅ Copied!\";btn.style.background=\"#10b981\";btn.style.color=\"white\";setTimeout(()=>{btn.textContent=\"Copy All Content\";btn.style.background=\"white\";btn.style.color=\"#764ba2\";},2000);}).catch(err=>alert(\"Copy failed: \"+err));}</script>'

sed -i '' "s|<body>|<body>${COPY_BUTTON}|" "$OUTPUT"

echo "✅ Converted $INPUT → $OUTPUT"
echo "Open with: open $OUTPUT"
