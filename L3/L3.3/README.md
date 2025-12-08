# L3.3: Plugin Marketplace, Skills & Creating Your Own

## What is this lesson about?

Explore the `/plugin` command, understand the difference between **MCPs**, **Plugins**, and **Skills**, and create your own skill!

## The Challenge

Ask Claude Code to:
1. **Use `/plugin`** to browse available plugins
2. **Explain the differences** between:
   - **MCPs** (Model Context Protocol servers)
   - **Plugins** (Extensions for Claude Code)
   - **Skills** (Reusable prompts/commands)
3. **Create an Email Skill** - A skill that helps send emails
4. **Install the skill** so you can use it anytime
5. **Create an HTML presentation** explaining all of this

## How to Start

Stay in the L3 folder (don't cd into L3.3!) and type:
```
claude+
```

## Quick Start Command

```
cd ~/Lessons/L3 && claude+
```

Copy this and paste in terminal!

## What to Say to Claude

> "Show me how to use the /plugin command to browse plugins. Explain the difference between MCPs, Plugins, and Skills. Then create a custom skill for sending emails and install it. Create an HTML presentation explaining all these concepts!"

## What You Will Learn

- How to browse and install from the plugin marketplace
- The difference between MCPs, Plugins, and Skills
- How to create your own custom skills
- How to use skills to automate common tasks

## Key Concepts

- **MCP**: External server that adds new capabilities (like browser control)
- **Plugin**: Pre-built tool from the marketplace
- **Skill**: A reusable prompt/command you can create yourself

## Installation Commands

**Browse plugins interactively:**
```bash
/plugin
```

**Add a marketplace:**
```bash
claude plugin marketplace add owner/repo
```

**Install a plugin:**
```bash
claude plugin install plugin-name
```

**List MCP servers:**
```bash
claude mcp list
```

## Official Documentation

- **Plugins**: https://code.claude.com/docs/en/plugins
- **Plugin Marketplaces**: https://code.claude.com/docs/en/plugin-marketplaces
- **Skills**: https://code.claude.com/docs/en/skills
- **MCP Servers**: https://code.claude.com/docs/en/mcp
- **Claude Code GitHub**: https://github.com/anthropics/claude-code

---

**Time estimate:** ~10 minutes

**Difficulty:** Intermediate

**Prerequisite:** L3.2 - Chrome DevTools MCP
