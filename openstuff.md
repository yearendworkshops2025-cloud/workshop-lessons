# COMPLETE FIX LIST - WORKSHOP LESSONS

## FIXES BY FILE (Copy-Paste Ready)

---

### FILE: `/home/student/Lessons/L3/L3.1/README.md`

**FIX 1 - Add installation command (line ~40, after "## Links"):** ✅ DONE
```markdown
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
```

**FIX 2 - Line 49, change:** ✅ DONE (included in FIX 1)

---

### FILE: `/home/student/Lessons/L3/L3.2/README.md`

**FIX 1 - Replace "Key Resources" section (lines 14-19) with:**
```markdown
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
```

**FIX 2 - DELETE these wrong/fake URLs:**
- ❌ `https://code.claude.com/docs/en/plugin-marketplaces` (URL format may be wrong)
- ❌ `https://claudemarketplaces.com/` (NOT official - remove entirely!)
- ❌ `https://claudemarketplaces.com/plugins/chromedevtools-chrome-devtools-mcp` (fake)

---

### FILE: `/home/student/Lessons/L3/L3.3/README.md`

**FIX 1 - Line 11, change "Use `/plugin marketplace`" to:**
```markdown
1. **Use `/plugin` command** to browse available plugins
```

**FIX 2 - Line 36, change prompt to:**
```markdown
> "Show me how to use the /plugin command to browse plugins. Explain the difference between MCPs, Plugins, and Skills. Then create a custom skill for sending emails and install it. Create an HTML presentation explaining all these concepts!"
```

**FIX 3 - Add after line 53 (before "## Resources"):**
```markdown
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
```

**FIX 4 - Replace "## Resources" section (lines 53-55) with:**
```markdown
## Official Documentation

- **Plugins**: https://code.claude.com/docs/en/plugins
- **Plugin Marketplaces**: https://code.claude.com/docs/en/plugin-marketplaces
- **Skills**: https://code.claude.com/docs/en/skills
- **MCP Servers**: https://code.claude.com/docs/en/mcp
- **Claude Code GitHub**: https://github.com/anthropics/claude-code
```

---

### FILE: `/home/student/Lessons/L2/README.md`

**FIX 1 - Add after line 75 (before the dashes):**
```markdown
## Official Documentation

- **Claude Code Overview**: https://code.claude.com/docs/en/overview
- **Memory & CLAUDE.md**: https://code.claude.com/docs/en/memory
- **Claude Code GitHub**: https://github.com/anthropics/claude-code
```

---

### FILE: `/home/student/Lessons/L2/L2.1/README.md`

**FIX 1 - Add after line 52 (before "## Key Concepts"):**
```markdown
## Official Documentation

- **Memory & CLAUDE.md**: https://code.claude.com/docs/en/memory
- **Settings**: https://code.claude.com/docs/en/settings
```

---

### FILE: `/home/student/Lessons/L2/L2.2/README.md`

**FIX 1 - Replace the command table (lines 62-72) with COMPLETE list:**
```markdown
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
```

---

### FILE: `/home/student/Lessons/L2/L2.3/README.md`

**FIX 1 - Line 55:** ❌ NO FIX NEEDED - `gpt-5.1-codex` is CORRECT per CLAUDE.md

**FIX 2 - Add after line 93:**
```markdown
## Official Documentation

- **Claude Code**: https://code.claude.com/docs/en/overview
- **Claude Code GitHub**: https://github.com/anthropics/claude-code
```

---

### FILE: `/home/student/Lessons/L4/README.md`

**FIX 1 - Add after line 23 (after "It's perfect for complex tasks..."):**
```markdown
### How to Enter Planning Mode

**Option 1 - Start in plan mode:**
```bash
claude --permission-mode plan
```

**Option 2 - Toggle during session:**
Press **Shift+Tab** twice to toggle plan mode on/off.
```

**FIX 2 - Add after line 65:**
```markdown
## Official Documentation

- **Common Workflows (Plan Mode)**: https://code.claude.com/docs/en/common-workflows
- **CLI Reference**: https://code.claude.com/docs/en/cli-reference
```

---

### FILE: `/home/student/Lessons/L11/README.md`

**FIX 1 - Line 14:** ❌ NO FIX NEEDED - `GPT-5 nano` is CORRECT per CLAUDE.md (model: `gpt-5-nano`)

**FIX 2 - Line 29:** ❌ NO FIX NEEDED - prompt is correct

---

### FILE: `/home/student/Lessons/L12/L12.1/README.md`

**FIX 1 - Line 11:** ❌ NO FIX NEEDED - `GPT-5 nano` is CORRECT per CLAUDE.md (model: `gpt-5-nano`)

**FIX 2 - Line 29:** ❌ NO FIX NEEDED - prompt is correct

---

### FILE: `/home/student/Lessons/README.md` (Main index)

**FIX 1 - Add after line 71 (before "## Remember"):**
```markdown
## Official Documentation

- **Claude Code Docs**: https://code.claude.com/docs/en/overview
- **Slash Commands**: https://code.claude.com/docs/en/slash-commands
- **MCP Servers**: https://code.claude.com/docs/en/mcp
- **Plugins**: https://code.claude.com/docs/en/plugins
- **GitHub**: https://github.com/anthropics/claude-code
```

---

## SUMMARY TABLE

| File | Issue | Priority | Status |
|------|-------|----------|--------|
| L3/L3.1/README.md | Missing install command for Playwright MCP | HIGH | ✅ DONE |
| L3/L3.2/README.md | FAKE URLs (claudemarketplaces.com) | **CRITICAL** | ⏳ TODO |
| L3/L3.2/README.md | Missing Chrome DevTools MCP GitHub link | HIGH | ⏳ TODO |
| L3/L3.3/README.md | Wrong command `/plugin marketplace` | HIGH | ⏳ TODO |
| L2/L2.2/README.md | Missing important slash commands | MEDIUM | ⏳ TODO |
| L4/README.md | Missing plan mode instructions | MEDIUM | ⏳ TODO |
| L11/README.md | ~~Fake model "GPT-5 nano"~~ | ~~MEDIUM~~ | ❌ NOT AN ISSUE - gpt-5-nano is correct! |
| L12/L12.1/README.md | ~~Fake model "GPT-5 nano"~~ | ~~MEDIUM~~ | ❌ NOT AN ISSUE - gpt-5-nano is correct! |
| L2.3/README.md | ~~Fake model "GPT-5.1 Codex"~~ | ~~MEDIUM~~ | ❌ NOT AN ISSUE - gpt-5.1-codex is correct! |
| ALL files | Missing official documentation links | LOW | ⏳ TODO |

---

## KEY OFFICIAL LINKS TO USE

| Resource | URL |
|----------|-----|
| Claude Code Overview | https://code.claude.com/docs/en/overview |
| Slash Commands | https://code.claude.com/docs/en/slash-commands |
| MCP Servers | https://code.claude.com/docs/en/mcp |
| Plugins | https://code.claude.com/docs/en/plugins |
| Plugin Marketplaces | https://code.claude.com/docs/en/plugin-marketplaces |
| Skills | https://code.claude.com/docs/en/skills |
| Memory/CLAUDE.md | https://code.claude.com/docs/en/memory |
| Settings | https://code.claude.com/docs/en/settings |
| Common Workflows | https://code.claude.com/docs/en/common-workflows |
| CLI Reference | https://code.claude.com/docs/en/cli-reference |
| Claude Code GitHub | https://github.com/anthropics/claude-code |
| Playwright MCP GitHub | https://github.com/microsoft/playwright-mcp |
| Chrome DevTools MCP GitHub | https://github.com/ChromeDevTools/chrome-devtools-mcp |
| MCP Protocol | https://modelcontextprotocol.io/ |

---

**Sources:**
- [Microsoft Playwright MCP](https://github.com/microsoft/playwright-mcp)
- [Chrome DevTools MCP](https://github.com/ChromeDevTools/chrome-devtools-mcp)
- [Chrome DevTools MCP npm](https://www.npmjs.com/package/chrome-devtools-mcp)
- [Claude Code Docs](https://code.claude.com/docs/en/overview)
