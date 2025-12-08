# L6.1: Add AI-Generated Images with Gemini API

## What is this lesson about?

Learn about **API Keys** and use the **Gemini Nano Banana** image generation API to create images for your website!

## The Challenge

Ask Claude Code to:
1. **Explain what API Keys are** - Secret passwords for AI services
2. **Show how to use the Gemini API** - Generate images with AI
3. **Create images for your L6 website** using Nano Banana
4. **Publish the enhanced version**:
   - Your L6 website already exists WITHOUT images
   - Now publish a NEW version WITH AI-generated images
5. **Create an HTML presentation** about API Keys and image generation

## What is an API Key?

An API key is like a password that lets you use AI services:
- It identifies who is using the service
- It's used for billing (some APIs cost money)
- It should NEVER be shared publicly!

## Nano Banana - Image Generation

The Gemini API includes "Nano Banana" - an AI that creates images:
- `gemini-2.5-flash-image` - Fast, cheap (~$0.04/image)
- `gemini-3-pro-image-preview` - Best quality (~$0.15/image, 4K)

## How to Start

Stay in the L6 folder (don't cd into L6.1!) and type:
```
claude+
```

## Quick Start Command

```
cd ~/Lessons/L6 && claude+
```

Copy this and paste in terminal!

## What to Say to Claude
> "Explain what API Keys are and where they come from. Then use the Gemini API Nano Banana to generate images for my website from L6. The L6 version was published without images - now publish the enhanced version WITH AI-generated images! Create an HTML presentation about API keys and AI image generation!"

## What You Will Learn

- What API keys are and how they work
- How to generate images with AI
- API security best practices
- How AI images enhance a website

## Security Warning!

- NEVER commit API keys to GitHub
- Keep them in .env files or secure storage
- The workshop has keys pre-configured in CLAUDE.md

---

**Time estimate:** ~10 minutes

**Difficulty:** Intermediate

**Prerequisite:** L6 - Create & Publish a Website
