#!/bin/bash
# Generate infographics using Gemini Nano Banana via REST API

API_KEY="AIzaSyCH3Z0GA--EvxQciPHbFaNhm_hw1TE0Zes"
MODEL="gemini-2.5-flash-image"
OUTPUT_DIR="images"

mkdir -p "$OUTPUT_DIR"

generate_image() {
    local name="$1"
    local prompt="$2"

    echo "Generating: $name..."

    # Create JSON payload
    local payload=$(cat <<EOF
{
  "contents": [{"parts": [{"text": "$prompt"}]}],
  "generationConfig": {
    "responseModalities": ["IMAGE", "TEXT"]
  }
}
EOF
)

    # Call API
    response=$(curl -s "https://generativelanguage.googleapis.com/v1beta/models/${MODEL}:generateContent?key=${API_KEY}" \
        -H "Content-Type: application/json" \
        -d "$payload")

    # Check for error
    if echo "$response" | grep -q '"error"'; then
        echo "  ❌ Error: $(echo "$response" | grep -o '"message": "[^"]*"' | head -1)"
        return 1
    fi

    # Extract base64 image data
    image_data=$(echo "$response" | grep -o '"data": "[^"]*"' | head -1 | sed 's/"data": "//;s/"$//')

    if [ -n "$image_data" ]; then
        echo "$image_data" | base64 -d > "${OUTPUT_DIR}/${name}.png"
        echo "  ✅ Saved: ${OUTPUT_DIR}/${name}.png"
        return 0
    else
        echo "  ⚠️ No image in response"
        return 1
    fi
}

echo "🎨 Generating infographics with Gemini Nano Banana..."
echo ""

# Generate each infographic
generate_image "vibe-coding-workflow" "Create a clean, minimal infographic diagram showing the Vibe Coding workflow: Left shows a person with speech bubble saying Build me a website. Center shows an AI robot icon labeled Claude Code. Right shows a computer screen with website. Arrows connecting them. Style: Flat design, simple icons, blue and gray colors, white background, horizontal layout, include text labels."

generate_image "github-vercel-deploy" "Create a clean infographic showing code deployment flow: Left box Your Code with laptop icon. Arrow labeled git push pointing to center box GitHub with cloud icon and subtitle Backup and History. Arrow labeled auto-deploy pointing to right box Live Website with globe icon. Style: Flat design, minimal, blue and green colors, white background, 3 boxes connected by arrows."

generate_image "static-vs-apps" "Create a comparison infographic with two columns: Left column STATIC WEBSITES with HTML file icon, deploy to GitHub Pages, examples Portfolio Landing page Docs, blue theme. Right column WEB APPS with gears database icon, deploy to Vercel, examples Dashboard API Dynamic site, purple theme. Style: Clean two-column layout, flat icons, white background."

generate_image "mcp-plugin-skill" "Create an infographic explaining 3 types of AI extensions stacked vertically: Row 1 blue MCP with server icon and text External server adding capabilities example Playwright. Row 2 green PLUGIN with puzzle piece icon and text Pre-built tools from marketplace. Row 3 purple SKILL with star icon and text Custom prompts you create. Style: 3 horizontal rows, flat icons, white background."

generate_image "dry-kiss-modular" "Create an infographic for 3 coding principles in 3 columns: Column 1 DRY blue with arrows merging icon and text Dont Repeat Yourself use functions. Column 2 KISS green with checkmark icon and text Keep It Simple clear code beats clever code. Column 3 MODULAR orange with building blocks icon and text Small files small functions. Style: 3 equal columns, flat design, white background."

echo ""
echo "Done! Check ${OUTPUT_DIR}/ for generated images."
