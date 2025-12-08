# L3.1: Installing Playwright MCP

## What is this lesson about?

Learn how to supercharge Claude Code with **MCPs** (Model Context Protocol servers)! MCPs add new abilities to Claude Code - like controlling a web browser automatically.

## What is an MCP?

An MCP is like a plugin that gives Claude new superpowers:
- **Playwright MCP** - Control a web browser automatically
- **Chrome DevTools MCP** - Debug websites like a pro
- **And many more!**

## The Challenge

Ask Claude Code to:
1. **Explain what MCPs are** and why they're useful
2. **Install Playwright MCP** from https://github.com/microsoft/playwright-mcp
3. **Show you how to use it** to automate browser tasks
4. **Create an HTML presentation** explaining MCPs

## How to Start

Stay in the L3 folder (don't cd into L3.1!) and type:
```
claude+
```

## Quick Start Command

```
cd ~/Lessons/L3 && claude+
```

Copy this and paste in terminal!

## What to Say to Claude

> "Explain what MCPs are in Claude Code. Then install the Playwright MCP from https://github.com/microsoft/playwright-mcp and show me how to use it. Create an HTML presentation explaining MCPs and what Playwright can do!"

## Key Concepts

- **MCP (Model Context Protocol)**: A way to extend Claude's abilities
- **Playwright**: A tool for automating web browsers
- **Browser Automation**: Making the computer click and type for you

## Installation Commands

**Option 1 - Via CLI (recommended):**
```bash
claude mcp add playwright -- npx @playwright/mcp@latest
```

**Option 2 - Via `/mcp` inside Claude Code:**
Type `/mcp` and follow the interactive menu.

## Official Links

- **GitHub**: https://github.com/microsoft/playwright-mcp
- **MCP Docs**: https://code.claude.com/docs/en/mcp
- **Claude Code Plugins**: https://code.claude.com/docs/en/plugins

---

**Time estimate:** ~10 minutes

**Difficulty:** Intermediate

**Prerequisite:** L3 - Build Your First Game
