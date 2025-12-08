# L3.4: Create Your Own MCP Server

## What is this lesson about?

Build your own **MCP (Model Context Protocol) server** that connects Claude Code to external services! You'll create an MCP that lets Claude send and receive messages using SimpleMessage.

## The Challenge

Ask Claude Code to:
1. **Read the SimpleMessage API** at https://simplemessage.franzai.com/api/docs
2. **Create an MCP server** that can:
   - Post messages to SimpleMessage
   - Read messages from SimpleMessage
3. **Install the MCP** into Claude Code
4. **Test it** by posting and reading messages!

## How to Start

```
cd ~/Lessons/L3 && claude+
```

Copy this and paste in terminal!

## What to Say to Claude

> "Create an MCP server for SimpleMessage. First, read the API documentation at https://simplemessage.franzai.com/api/docs to understand the endpoints. Then create an MCP that can post and read messages. Install it and test it!"

## What You Will Learn

- How MCP servers work
- How to connect Claude to external APIs
- How to create custom tools for Claude
- TypeScript/Node.js basics

## Key Concepts

- **MCP**: Model Context Protocol - lets Claude use external tools
- **Tool**: A function Claude can call (like `post_message`, `get_messages`)
- **Server**: A program that runs and provides tools to Claude

## SimpleMessage API Quick Reference

**Base URL:** `https://simplemessage.franzai.com`

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/api/message` | POST | Send a message (JSON: `{name, message}`) |
| `/api/messages.json` | GET | Get all messages as JSON |
| `/api/docs` | GET | Full API documentation |

## Expected MCP Tools

Your MCP should provide these tools:

- **`post_message`** - Send a message to SimpleMessage
  - Parameters: `name` (string), `message` (string)
  - Returns: Success status and message ID

- **`get_messages`** - Read all messages from SimpleMessage
  - Parameters: none
  - Returns: Array of messages

## Installation

After creating the MCP, install it with:
```bash
claude mcp add simplemessage-mcp -s user -- node /path/to/your/mcp/index.js
```

## Official Documentation

- **MCP Overview**: https://code.claude.com/docs/en/mcp
- **Creating MCP Servers**: https://modelcontextprotocol.io/quickstart/server
- **MCP TypeScript SDK**: https://github.com/modelcontextprotocol/typescript-sdk
- **SimpleMessage API**: https://simplemessage.franzai.com/api/docs

---

**Time estimate:** ~15 minutes

**Difficulty:** Advanced

**Prerequisite:** L3.3 - Plugins & Skills

**Next:** L4 - Debug & Optimize
