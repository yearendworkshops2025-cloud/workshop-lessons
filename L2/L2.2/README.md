# L2.2: Essential Claude Code Commands

## IMPORTANT: Complete L2 and L2.1 First!

This is a sub-lesson of L2. Make sure you've completed L2 and L2.1 before starting this one.

---

## What is this lesson about?

Learn the **most important commands** inside Claude Code! These slash commands help you control and manage your AI coding assistant.

## The Challenge

Ask Claude Code to:
1. **Explain these essential commands**:
   - `/init` - Initialize a new project with CLAUDE.md
   - `/compact` - Compress conversation to save context
   - `/clear` - Clear the conversation
   - `/logout` and `/login` - Manage authentication
   - `/help` - Show all available commands
   - `/config` - Change settings
   - `/cost` - Show token usage and costs
2. **Explain what "Context Window" means** - Why it matters!
3. **Explain what "Compaction" does** - How Claude remembers things
4. **Create an HTML presentation** about all commands

## How to Start

Stay in the L2 folder (don't cd into L2.2!) and type:
```
claude+
```

## Quick Start Command

```
cd ~/Lessons/L2 && claude+
```

Copy this and paste in terminal!

## What to Say to Claude
> "Explain the most important Claude Code slash commands: /init, /compact, /clear, /logout, /login, /help, /config, and /cost. Explain what Context Window means and why compaction is important. Create an HTML presentation about all of this!"

## Key Concepts

### Context Window
The "memory" of the AI - how much text it can see at once.
- Claude has a limited context window (like short-term memory)
- If the conversation gets too long, old parts get "forgotten"
- That's why `/compact` exists!

### Compaction (/compact)
Summarizes the conversation to save space:
- Keeps the important information
- Removes unnecessary details
- Lets you have longer conversations!

### Essential Commands Quick Reference

| Command | What it does |
|---------|--------------|
| `/init` | Create CLAUDE.md for a new project |
| `/compact` | Compress conversation to save memory |
| `/clear` | Start fresh, clear everything |
| `/help` | Show all available commands |
| `/config` | Change Claude Code settings |
| `/cost` | Show how many tokens you've used |
| `/context` | Visualize context window usage |
| `/model` | Switch AI model (Opus, Sonnet, Haiku) |
| `/mcp` | Manage MCP server connections |
| `/plugin` | Browse and install plugins |
| `/doctor` | Check installation health |
| `/memory` | Edit CLAUDE.md files |
| `/logout` | Log out of Claude Code |
| `/login` | Log in to Claude Code |

## Official Documentation

- **Slash Commands**: https://code.claude.com/docs/en/slash-commands
- **CLI Reference**: https://code.claude.com/docs/en/cli-reference

---

**Time estimate:** ~10 minutes

**Difficulty:** Intermediate

**Prerequisite:** L2.1 - CLAUDE.md Management
