#!/bin/bash
# Converts HANDOVER.md to HANDOVER.html with Wikipedia-like minimal CSS
# Single source of truth: Edit HANDOVER.md, then run this script

INPUT="HANDOVER.md"
OUTPUT="HANDOVER.html"
CSS="handover-style.css"

# Social media / OG settings
OG_TITLE="Workshop Takeaways & Home Setup Guide"
OG_DESC="Franz Enzenhofer Vibe Coding Workshop - Learn to build with AI using Claude Code and OpenAI Codex"
OG_IMAGE="https://yearendworkshops2025-cloud.github.io/workshop-lessons/images/vibe-coding-workflow.png"
OG_URL="https://yearendworkshops2025-cloud.github.io/workshop-lessons/HANDOVER.html"

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

# Add Open Graph and Twitter Card meta tags for social media sharing
OG_TAGS='<meta property="og:type" content="website"><meta property="og:title" content="'"$OG_TITLE"'"><meta property="og:description" content="'"$OG_DESC"'"><meta property="og:image" content="'"$OG_IMAGE"'"><meta property="og:url" content="'"$OG_URL"'"><meta name="twitter:card" content="summary_large_image"><meta name="twitter:title" content="'"$OG_TITLE"'"><meta name="twitter:description" content="'"$OG_DESC"'"><meta name="twitter:image" content="'"$OG_IMAGE"'"><meta name="description" content="'"$OG_DESC"'">'

sed -i '' "s|</head>|${OG_TAGS}</head>|" "$OUTPUT"

# Add Copy All button after <body> - Wikipedia-like clean design
COPY_BUTTON='<div id="copy-container" style="background:#f8f9fa;border:1px solid #a2a9b1;padding:12px 16px;margin:0 0 20px 0;border-radius:4px;display:flex;justify-content:space-between;align-items:center;"><span style="color:#222;font-size:14px;">Copy this entire guide and paste into Claude Code or Codex</span><button id="copy-btn" onclick="copyAll()" style="background:#36c;color:white;border:none;padding:8px 16px;border-radius:3px;cursor:pointer;font-size:14px;">Copy All</button></div><script>function copyAll(){const content=document.body.innerText;navigator.clipboard.writeText(content).then(()=>{const btn=document.getElementById(\"copy-btn\");btn.textContent=\"Copied!\";btn.style.background=\"#14866d\";setTimeout(()=>{btn.textContent=\"Copy All\";btn.style.background=\"#36c\";},2000);}).catch(err=>alert(\"Copy failed: \"+err));}</script>'

sed -i '' "s|<body>|<body>${COPY_BUTTON}|" "$OUTPUT"

echo "✅ Converted $INPUT → $OUTPUT"
echo "📱 Social media tags added (og:image, twitter:card)"
echo "Open with: open $OUTPUT"
