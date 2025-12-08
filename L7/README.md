# L7: Coding Standards, Git, GitHub & Best Practices

## What is this lesson about?

Learn the **rules professional developers follow** to write clean, maintainable code. Also learn about **Git** (version control) and **GitHub** (code hosting) - essential tools for any developer!

## The Challenge

Ask Claude Code to:
1. **Explain these coding principles**:
   - **DRY** - Don't Repeat Yourself
   - **KISS** - Keep It Simple, Stupid
   - **YAGNI** - You Ain't Gonna Need It
2. **Show examples** of good vs bad code
3. **Explain these tools**:
   - **Linting** - Automatic code style checking
   - **TypeCheck** - Finding type errors before running
4. **Explain Git and GitHub**:
   - What is Git? (version control / time machine for code)
   - What is GitHub? (cloud storage for code)
   - How do backups work? (push to GitHub = safe backup)
5. **Explain pragmatic testing** - Tests that matter
6. **Show pragmatic GitHub strategies** - Commits, branches, PRs
7. **Create an HTML presentation** about all of this

## How to Start

```
cd ~/Lessons/L7 && claude+
```

Copy this and paste in terminal!

## What to Say to Claude
> "Teach me about coding standards! Explain DRY, KISS, and YAGNI with examples. Explain what Git is (version control) and what GitHub is (cloud storage for code). Show me how backups work with Git - push to save, pull to restore. Explain linting, type checking, and pragmatic testing. Create an HTML presentation about all these concepts!"

## Key Concepts

### DRY - Don't Repeat Yourself
If you write the same code twice, make it a function instead!

### KISS - Keep It Simple, Stupid
Simple code is better than clever code. Write code that others can understand.

### YAGNI - You Ain't Gonna Need It
Don't add features "just in case" - add them when you actually need them.

### Git - Version Control (Time Machine for Code)
- **Save snapshots** of your code at any point
- **Go back in time** if something breaks
- **See who changed what** and when
- Works **locally** on your computer

### GitHub - Cloud Storage for Code
- **Remote backup** - your code is safe even if your computer dies
- **Collaboration** - work with others on the same project
- **Portfolio** - show your work to employers
- Works **online** in the cloud

### How Backups Work
1. `git add .` - Select files to save
2. `git commit -m "message"` - Create a snapshot
3. `git push` - Upload to GitHub (BACKUP!)
4. `git pull` - Download from GitHub (RESTORE!)

### Linting
A tool that checks your code style automatically (like spell-check for code).

### Type Checking
Finding errors in your code before you run it.

### Pragmatic Testing
Write tests for things that matter, not everything.

### GitHub Strategies for Teams & Solo Developers

**For Solo Developers (Simple Strategy):**
1. Work directly on `main` branch
2. Commit often with clear messages
3. Push after every work session (backup!)
4. Use tags for releases: `git tag v1.0`

**For Teams (Branch Strategy):**
1. `main` branch = always working, deployable code
2. Create feature branches: `git checkout -b feature/add-login`
3. Make changes and commit to your branch
4. Create a Pull Request (PR) on GitHub
5. Get code reviewed by teammates
6. Merge to main when approved

**Commit Message Best Practices:**
```
feat: add user login functionality
fix: resolve crash on empty input
docs: update README with install steps
refactor: simplify database queries
```

**Essential Git Commands:**
```bash
git status              # What's changed?
git add .               # Stage all changes
git commit -m "message" # Save snapshot
git push                # Upload to GitHub
git pull                # Download from GitHub
git checkout -b name    # Create new branch
git merge branch-name   # Merge branch into current
```

**Pull Requests (PRs):**
- A request to merge your code into the main branch
- Allows code review before merging
- Creates a discussion thread for feedback
- Use `gh pr create` with Claude Code!

---

**Time estimate:** ~15 minutes

**Difficulty:** Intermediate

**Note:** These principles apply to ALL programming languages!
