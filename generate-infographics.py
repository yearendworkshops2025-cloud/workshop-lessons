#!/usr/bin/env python3
"""Generate infographics for HANDOVER.md using Gemini Nano Banana Pro"""

import os
from google import genai

# Configure API
client = genai.Client(api_key="AIzaSyBL6u8R_BdMlJxq4lZStkkjl9-IGQHb-FU")

# Full context for all infographics
CONTEXT = """
CONTEXT: This infographic is for a "Vibe Coding Workshop" handout document.
TARGET AUDIENCE: Non-technical beginners learning to code with AI assistants (Claude Code, OpenAI Codex).
PHILOSOPHY: "Vibe Coding" means telling AI what you want in plain English instead of typing commands.
DOCUMENT PURPOSE: A take-home reference guide participants can use after the workshop.

STYLE REQUIREMENTS:
- FILL THE ENTIRE CANVAS - no empty space or margins
- Information-dense but clear
- Bold, vibrant colors with good contrast
- Modern flat design with clean vector icons
- Large readable text (this will be viewed on screen)
- Educational but visually engaging
- Professional tech workshop aesthetic
- Use icons and visuals to convey concepts quickly
- Dark backgrounds work better than white (more striking)
"""

# Infographics to generate with FULL context
infographics = [
    {
        "name": "vibe-coding-workflow",
        "prompt": f"""{CONTEXT}

CREATE THIS INFOGRAPHIC: "The Vibe Coding Workflow"

SHOW A HORIZONTAL FLOW WITH 3 STAGES:
1. LEFT: Human figure with speech bubble saying "Build me a website!" - represents the user giving natural language instructions
2. CENTER: Glowing AI robot/assistant icon labeled "Claude Code / Codex" - represents the AI coding assistant doing the work
3. RIGHT: Laptop screen showing a beautiful website - represents the finished result

INCLUDE THESE KEY MESSAGES:
- "You describe what you want"
- "AI writes the code"
- "Working software in minutes"

Use flowing arrows connecting each stage. Make it feel like magic - the transformation from idea to reality.
Color scheme: Deep blue to purple gradient background, bright cyan/teal accents, white text.
Fill the entire image, make it visually impactful and memorable."""
    },
    {
        "name": "github-vercel-deploy",
        "prompt": f"""{CONTEXT}

CREATE THIS INFOGRAPHIC: "Code → Backup → Live Website"

SHOW A DEPLOYMENT PIPELINE WITH 3 CONNECTED BOXES:

BOX 1 - "YOUR CODE" (left):
- Laptop icon with code on screen
- Label: "Local files on your computer"

BOX 2 - "GITHUB" (center):
- Cloud/repository icon
- Key benefits listed: "✓ Version history" "✓ Backup" "✓ Collaboration"
- Arrow from Box 1 labeled "git push"

BOX 3 - "LIVE WEBSITE" (right):
- Globe icon with sparkles
- URL bar showing "yoursite.vercel.app"
- Arrow from Box 2 labeled "auto-deploy"

BOTTOM MESSAGE: "Just tell the AI: 'Deploy this to Vercel' - it handles everything!"

Color scheme: Dark gradient background, GitHub purple, Vercel black/white, green for "live".
Make the flow crystal clear - this is about automatic deployment being easy."""
    },
    {
        "name": "static-vs-apps",
        "prompt": f"""{CONTEXT}

CREATE THIS INFOGRAPHIC: "Static Websites vs Web Apps - Which Hosting to Use?"

SIDE-BY-SIDE COMPARISON WITH TWO COLUMNS:

LEFT COLUMN - "STATIC WEBSITES" (Blue theme):
- Icon: HTML file or simple webpage
- "Just files: HTML, CSS, JS"
- Deploy to: GITHUB PAGES (free)
- Examples: Portfolio, Landing page, Documentation, Blog
- "Tell AI: 'Publish to GitHub Pages'"

RIGHT COLUMN - "WEB APPS" (Purple/violet theme):
- Icon: Gears + database or dynamic app
- "Has backend/server code"
- Deploy to: VERCEL (free tier)
- Examples: Dashboard, API, Login system, Database app
- "Tell AI: 'Deploy to Vercel'"

BOTTOM: Decision helper - "Not sure? Start with GitHub Pages. If AI says you need a server, use Vercel."

Make each column visually distinct. Use icons to represent each example.
Dark background, vibrant column colors, clear visual separation."""
    },
    {
        "name": "mcp-plugin-skill",
        "prompt": f"""{CONTEXT}

CREATE THIS INFOGRAPHIC: "3 Ways to Extend Your AI Assistant"

THREE HORIZONTAL SECTIONS, EACH CLEARLY LABELED:

SECTION 1 - "MCP" (Blue):
- Icon: Server with plug/connection
- Full name: "Model Context Protocol"
- What: "External servers adding capabilities"
- Example: "Playwright = control web browsers"
- Install: "Tell AI to install it, then restart Claude Code"

SECTION 2 - "PLUGIN" (Green):
- Icon: Puzzle piece clicking into place
- What: "Pre-built tools from marketplace"
- Example: "Chrome DevTools = debug websites"
- Install: "Browse and install from plugin store"

SECTION 3 - "SKILL" (Purple/Magenta):
- Icon: Magic wand with sparkles or star
- What: "Custom reusable prompts YOU create"
- Example: "Email helper, code reviewer"
- Create: "Write your own or ask AI to make one"

Make each section feel like a distinct card. Icons should be large and recognizable.
Dark background with each section having its own color accent."""
    },
    {
        "name": "dry-kiss-modular",
        "prompt": f"""{CONTEXT}

CREATE THIS INFOGRAPHIC: "3 Golden Rules of Good Code"

THREE EQUAL COLUMNS WITH BOLD HEADERS:

COLUMN 1 - "DRY" (Blue):
- Large header: DRY
- Subtitle: "Don't Repeat Yourself"
- Icon: Two arrows merging into one, or copy icons with X
- Key message: "Use functions instead of copy-paste"
- "If you write it twice, make it a function"

COLUMN 2 - "KISS" (Green):
- Large header: KISS
- Subtitle: "Keep It Simple"
- Icon: Checkmark or thumbs up
- Key message: "Clear code beats clever code"
- "If it's hard to read, simplify it"

COLUMN 3 - "MODULAR" (Orange):
- Large header: MODULAR
- Subtitle: "Small Pieces"
- Icon: Building blocks or Lego bricks
- Key message: "Small files, small functions"
- "Easy to understand, easy to fix"

BOTTOM: "Add these to your CLAUDE.md file - AI will follow them automatically!"

Make the three columns feel like a cohesive set. Bold, memorable design.
Dark background, each column with its vibrant accent color."""
    }
]

def generate_and_save(info):
    """Generate an infographic and save it"""
    print(f"Generating: {info['name']}...")

    try:
        # Using Nano Banana Pro (Gemini 3 Pro Image) for higher quality infographics
        response = client.models.generate_content(
            model="gemini-3-pro-image-preview",
            contents=[info['prompt']],
        )

        # Save image from response
        for part in response.parts:
            if part.inline_data is not None:
                image = part.as_image()
                filepath = f"images/{info['name']}.png"
                image.save(filepath)
                print(f"  ✅ Saved: {filepath}")
                return True

        print(f"  ⚠️ No image in response")
        return False

    except Exception as e:
        print(f"  ❌ Error: {e}")
        return False

if __name__ == "__main__":
    os.chdir("/Users/franzenzenhofer/dev/workshop-lessons")
    os.makedirs("images", exist_ok=True)

    print("🎨 Generating infographics with Gemini Nano Banana...\n")

    success = 0
    for info in infographics:
        if generate_and_save(info):
            success += 1

    print(f"\n✅ Generated {success}/{len(infographics)} infographics")
