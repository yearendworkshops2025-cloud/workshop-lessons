# L12.1: Add AI to Your Todo App

## What is this lesson about?

Supercharge your Todo app with **AI capabilities**! Add smart features powered by GPT-5 nano.

## The Challenge

Ask Claude Code to:
1. **Add AI features** to your Todo app:
   - Smart task suggestions
   - Auto-categorization of tasks
   - Priority recommendations
   - Time estimates for tasks
2. **Explain API key security** - How to keep keys safe
3. **Show secure vs insecure** ways to use API keys
4. **Create an HTML presentation** about API security

## How to Start

Stay in the L12 folder (don't cd into L12.1!) and type:
```
cd ~/Lessons/L12 && claude+
```

Copy this and paste in terminal!

## What to Say to Claude
> "Add AI capabilities to my Todo app using GPT-5 nano. Add smart suggestions, auto-categorization, and priority recommendations. Explain API key security and show me secure vs insecure ways to handle keys. Create an HTML presentation about API security!"

## What You Will Learn

- How to integrate AI into applications
- API key security best practices
- Client-side vs server-side API calls
- The dangers of exposed API keys

## API Key Security Rules

### NEVER DO THIS:
```javascript
// BAD! API key visible in browser
const apiKey = "sk-proj-abc123...";
fetch("https://api.openai.com/...", {
  headers: { "Authorization": `Bearer ${apiKey}` }
});
```

### DO THIS INSTEAD:
```javascript
// GOOD! API key hidden on server
fetch("/api/ai-suggestion", {
  method: "POST",
  body: JSON.stringify({ task: "Buy groceries" })
});
```

## Key Concepts

- **Client-side**: Code running in the user's browser (visible!)
- **Server-side**: Code running on your server (hidden)
- **Environment Variables**: Secure way to store secrets
- **API Proxy**: Server that hides your API key

---

**Time estimate:** ~10 minutes

**Difficulty:** Advanced

**Prerequisite:** L12 - Build a Todo List App
