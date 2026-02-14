# Context Bridge CLI

> Stop re-explaining yourself to AI assistants

A command-line tool for managing persistent AI context files across Claude, ChatGPT, GitHub Copilot, and other AI assistants.

## Why?

Every time you start a new AI conversation, you spend 10 minutes re-explaining:
- What you're working on
- Your tech stack
- Your preferences
- What happened last session

**Context Bridge solves this.** Create once, use everywhere.

## Installation

```bash
npm install -g @context-bridge/cli
```

## Quick Start

```bash
# 1. Authenticate with GitHub
context login

# 2. Create your context (choose a template or start blank)
context init

# 3. Get your URL
context url

# 4. In any AI chat, say:
"Read [your-url] first"
```

That's it! The AI now understands your full context.

## Commands

### `context login`
Authenticate with GitHub (required once)

```bash
context login
```

### `context init`
Create a new context file

```bash
# Interactive mode with template selection
context init

# Use specific template
context init --template developer
```

**Available templates:**
- `developer` - For software engineers
- `designer` - For UI/UX designers
- `pm` - For product managers
- `writer` - For writers/content creators
- `student` - For students
- `entrepreneur` - For founders/entrepreneurs
- `blank` - Start from scratch

### `context update`
Edit your context and push changes

```bash
# Opens in your default editor ($EDITOR)
context update

# Use specific editor
context update --editor code  # VS Code
context update --editor vim

# Add commit message
context update --message "Updated current sprint tasks"
```

### `context view`
Show your current context

```bash
# Pretty formatted
context view

# Raw markdown (for piping)
context view --raw
```

### `context history`
Show version history

```bash
# Show last 10 versions
context history

# Show last 20 versions
context history --number 20
```

### `context url`
Get your shareable URL

```bash
# Show URL
context url

# Copy to clipboard
context url --copy

# Get raw URL (for AI assistants)
context url --raw
```

### `context status`
Check context health

```bash
context status
```

## How It Works

1. **GitHub Gists**: Your context is stored in a private GitHub gist (you own it)
2. **Public URL**: The gist has a public URL that AI assistants can read
3. **Version Control**: Every update creates a new version (full history)
4. **Universal**: Works with any AI that can read URLs

## Usage with AI Assistants

### Claude (claude.ai)
```
Read https://gist.github.com/[username]/[id]/raw/CONTEXT.md first, then help me with [task]
```

### ChatGPT
```
Before we start, please read my context at: [your raw URL]
Now, [your question]
```

### GitHub Copilot
Add to your project's `.github/copilot-instructions.md`:
```markdown
Read [your raw URL] for project context.
```

### Any AI Assistant
Just paste your raw URL at the start of conversations!

## Best Practices

### Update Regularly
Update your context after significant changes:
```bash
context update --message "Completed auth system"
```

### Keep It Current
Add to end of each AI session:
- What was completed
- What's next
- Current blockers

### Use Templates
Start with a template, customize to your needs:
```bash
context init --template developer
context update  # Customize it
```

### Share Across Teams
Everyone on your team can have their own context:
```bash
# Engineering lead
context init --template developer

# Product manager
context init --template pm

# Designer
context init --template designer
```

## Configuration

Config stored in `~/.context-bridge/config.json`:

```json
{
  "github_token": "ghp_xxx",
  "gist_id": "abc123",
  "gist_url": "https://gist.github.com/...",
  "raw_url": "https://gist.github.com/.../raw/...",
  "last_updated": "2026-02-13T17:00:00.000Z",
  "template": "developer",
  "name": "Your Name"
}
```

## Examples

### Software Developer Context
```bash
context init --template developer
# Edit to add your stack, current project, preferences
context update
# Share with AI assistants
context url --copy
```

### Writer Context
```bash
context init --template writer
# Add your voice, audience, current pieces
context update
# AI now writes in your style
```

### Student Context
```bash
context init --template student
# Add courses, assignments, learning goals
context update
# AI tutors based on your context
```

## Troubleshooting

### "Not authenticated"
```bash
context login
```

### "No context initialized"
```bash
context init
```

### "Failed to update"
Check your internet connection and GitHub token permissions (needs `gist` scope).

### Editor not opening
Set your preferred editor:
```bash
export EDITOR=code  # VS Code
export EDITOR=vim   # Vim
export EDITOR=nano  # Nano
```

## Privacy

- **Your data**: Stored in your GitHub account (you own it)
- **We don't store**: Any of your context content
- **We only store**: Gist ID for CLI convenience
- **Private by default**: Gists are private (readable via URL but not listed)

## License

MIT

## Links

- [Context Bridge Website](https://context-bridge.pages.dev)
- [GitHub Repository](https://github.com/blackboxprogramming/context-bridge)
- [Report Issues](https://github.com/blackboxprogramming/context-bridge/issues)

---

Made with ❤️ by [Context Bridge](https://context-bridge.pages.dev)
