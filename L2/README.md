# L2: Understanding Your System

## What is this lesson about?

Before we dive deeper into coding, let's understand the powerful system you're working with! Claude Code is connected to this computer and has access to many tools and services.

## What is CLAUDE.md?

**CLAUDE.md is Claude Code's instruction file** - it tells the AI how to behave, what tools are available, and what rules to follow.

### Key Facts:
- It's a **Markdown file** (.md) that humans can read and edit
- Claude reads it **at the start of every conversation**
- It contains: rules, credentials, API keys, tool instructions
- **Other AI tools have similar files:**
  - Claude Code → `CLAUDE.md`
  - OpenAI Codex CLI → `AGENTS.md`
  - Same concept, different names!

### How it works:
1. You start Claude Code in a folder
2. Claude looks for CLAUDE.md files
3. It reads and follows the instructions inside
4. The instructions become part of Claude's "personality" for that session

## The Challenge

Ask Claude Code to:
1. **Explain what this computer is** - What's installed, what's configured
2. **Show you the CLAUDE.md file** - This is Claude's "instruction manual" for this workshop
3. **Create an HTML presentation** explaining everything about this setup
4. **Teach you basic terminal commands**:
   - `pwd` - Where am I? (Print Working Directory)
   - `ls` - What's here? (List files)
   - `cd` - Go somewhere (Change Directory)
   - `cd ..` - Go back one level
   - **TAB key** - Autocomplete magic! (e.g., type `cd L` then press TAB)

## What You Will Learn

- What the CLAUDE.md file is and why it matters
- How to navigate in a terminal
- What tools and APIs are available on this system
- How Claude Code connects to everything

## How to Start

Open your terminal and type:
```
pwd
ls
cd Lessons
cd L2
claude+
```

## Quick Start Command

```
cd ~/Lessons/L2 && claude+
```

Copy this and paste in terminal!

## What to Say to Claude
> "Explain to me what this computer is, show me the CLAUDE.md file and explain everything in it. Create an HTML presentation about all of this. Also teach me how to use the terminal - explain pwd, ls, cd, cd .. AND the TAB key for autocomplete!"

## Key Concepts

- **Terminal**: A text-based way to control your computer
- **CLAUDE.md**: Claude's instruction file with rules and credentials
- **API Keys**: Secret passwords that let you use AI services
- **TAB Autocomplete**: Press TAB to complete file/folder names automatically!
  - Type `cd L` then press TAB → shows all folders starting with L
  - Type `cd Le` then press TAB → autocompletes to `cd Lessons`
  - Saves typing and prevents typos!

## Official Documentation

- **Claude Code Overview**: https://code.claude.com/docs/en/overview
- **Memory & CLAUDE.md**: https://code.claude.com/docs/en/memory
- **Claude Code GitHub**: https://github.com/anthropics/claude-code

---

**Time estimate:** ~10 minutes

**Difficulty:** Beginner

**Next Steps:**
- **L2.1** - CLAUDE.md Management (user vs project config)
- **L2.2** - Essential Claude Commands (/init, /compact, context window)
- **L2.3** - AI Coding CLIs Compared (Claude Code vs Codex vs Gemini)
