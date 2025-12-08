# L4: Debug, Optimize & Play Your Game!

## What is this lesson about?

Now it's time to make your game from L3 even better! Learn how to use **Planning Mode** to organize complex improvements, then debug and optimize your game.

## The Challenge

Ask Claude Code to:
1. **Use Planning Mode** to plan game improvements
2. **Debug any issues** in your game
3. **Optimize the code** - Make it cleaner and faster
4. **Add new features** based on your plan
5. **Play test the game** and fix any problems
6. **Create an HTML presentation** about Planning Mode

## What is Planning Mode?

Planning Mode is when Claude Code stops and thinks carefully before coding:
- Creates a step-by-step plan
- Shows you the plan for approval
- Only starts coding after you agree

It's perfect for complex tasks that need careful thought!

### How to Enter Planning Mode

**Option 1 - Start in plan mode:**
```bash
claude --permission-mode plan
```

**Option 2 - Toggle during session:**
Press **Shift+Tab** twice to toggle plan mode on/off.

**Option 3 - Use the special planning model:**
```bash
claude --model opusplan --permission-mode plan
```
Uses Opus for planning, auto-switches to Sonnet for edits.

## How to Start

Open your terminal and type:
```
pwd
ls
cd Lessons
cd L4
claude+
```

## Quick Start Command

```
cd ~/Lessons/L4 && claude+
```

Copy this and paste in terminal!

## What to Say to Claude
> "Let's improve my game! First, use Planning Mode to create a plan for improvements. Then debug any issues, optimize the code, and add one cool new feature. Explain what Planning Mode is and create an HTML presentation about it!"

## What You Will Learn

- How to use Planning Mode for complex tasks
- How to debug code (find and fix errors)
- How to optimize code (make it better)
- How to test your game properly

## Key Concepts

- **Planning Mode**: Think before you code
- **Debugging**: Finding and fixing errors
- **Optimization**: Making code cleaner and faster
- **Play Testing**: Testing like a real user would

## Official Documentation

- **Common Workflows (Plan Mode)**: https://code.claude.com/docs/en/common-workflows
- **CLI Reference**: https://code.claude.com/docs/en/cli-reference

---

**Time estimate:** ~10 minutes

**Difficulty:** Intermediate

**Prerequisite:** L3 - Build Your First Game
