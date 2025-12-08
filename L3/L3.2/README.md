# L3.2: Chrome DevTools MCP & Plugin Marketplaces

## What is this lesson about?

Learn about **Plugin Marketplaces** - places where you can discover and install new MCPs and tools for Claude Code!

## The Challenge

Ask Claude Code to:
1. **Explain Plugin Marketplaces** - What are they? Where to find plugins?
2. **Install Chrome DevTools MCP** - Debug websites directly from Claude Code
3. **Show you how to use it** to inspect your game from L3
4. **Create an HTML presentation** about plugin marketplaces

## Key Resources

- **Claude Code MCP Docs**: https://code.claude.com/docs/en/mcp
- **Chrome DevTools MCP GitHub**: https://github.com/ChromeDevTools/chrome-devtools-mcp
- **Chrome DevTools MCP npm**: https://www.npmjs.com/package/chrome-devtools-mcp

## Installation Commands

**Option 1 - Via CLI:**
```bash
claude mcp add chrome-devtools -- npx chrome-devtools-mcp@latest
```

**Option 2 - Add marketplace first, then install plugin:**
```bash
claude plugin marketplace add ChromeDevTools/chrome-devtools-mcp
claude plugin install chrome-devtools
```

## How to Start

Stay in the L3 folder (don't cd into L3.2!) and type:
```
claude+
```

## Quick Start Command

```
cd ~/Lessons/L3 && claude+
```

Copy this and paste in terminal!

## What to Say to Claude

> "Explain what Plugin Marketplaces are for Claude Code. Install the Chrome DevTools MCP and show me how to use it. Create an HTML presentation about plugin marketplaces and how to use Chrome DevTools MCP!"

## What You Will Learn

- Where to find Claude Code plugins
- How to install MCPs from marketplaces
- How to debug websites with Chrome DevTools
- How to use DevTools to inspect your game

## Key Concepts

- **Plugin Marketplace**: A collection of tools you can add to Claude
- **Chrome DevTools**: Browser tools for inspecting and debugging websites
- **Network Tab**: See all data your website sends and receives
- **Console**: See error messages and logs

---

**Time estimate:** ~10 minutes

**Difficulty:** Intermediate

**Prerequisite:** L3.1 - Installing Playwright MCP
