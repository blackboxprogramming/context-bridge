# Quick Test Guide - Context Bridge CLI

## Test Now (5 minutes)

### 1. Link the CLI
```bash
cd /Users/alexa/context-bridge/cli
npm link
```

### 2. Test Basic Commands
```bash
# Should show help
context

# Should show version
context --version

# Should show detailed help
context --help
```

### 3. Test Login (requires GitHub token)
```bash
# Option 1: Use gh CLI (if installed)
context login
# Select "GitHub CLI (gh)"

# Option 2: Use token
# Create token at: https://github.com/settings/tokens/new
# Required scope: gist
context login
# Select "Personal Access Token"
# Paste token
```

### 4. Test Init
```bash
context init
# Select a template (try "Software Developer")
# Answer prompts
# Should create gist and show URLs
```

### 5. Test View
```bash
context view
# Should show formatted context
```

### 6. Test URL
```bash
# Show URL
context url

# Copy to clipboard
context url --copy

# Get raw URL (for AI)
context url --raw
```

### 7. Test in AI Chat
```bash
# Get your raw URL
context url --raw

# Copy it
# Open Claude or ChatGPT
# Paste: "Read [your-url] first, then tell me what you know about me"
```

### 8. Test Update
```bash
context update
# Should open editor (vim by default)
# Make a change
# Save and quit (:wq in vim)
# Should push to gist
```

### 9. Test History
```bash
context history
# Should show version history
```

### 10. Test Status
```bash
context status
# Should show context health
```

## Expected Results

### After Login
```
✓ Authenticated as [your-github-username]
Token saved to ~/.context-bridge/config.json

Next: Run context init to create your context
```

### After Init
```
✓ Context created!

📋 Your Context URLs:

Gist: https://gist.github.com/[user]/[id]
Raw:  https://gist.github.com/[user]/[id]/raw/CONTEXT.md

💡 How to use:

1. context view - View your context
2. context update - Edit and push changes
3. context url - Get shareable URL

4. In any AI chat, say: "Read [raw-url] first"
```

### After View
```
📄 Your Context

────────────────────────────────────────────────────────────
# [Your Name]'s Context

**Last Updated**: 2026-02-13
...
────────────────────────────────────────────────────────────

Last updated: 2/13/2026, 5:30:00 PM
Revisions: 1
URL: https://gist.github.com/...
```

## Troubleshooting

### "Command not found: context"
```bash
# Make sure you ran npm link
cd /Users/alexa/context-bridge/cli
npm link

# Or run directly
node bin/context.js
```

### "Not authenticated"
```bash
context login
```

### "No context initialized"
```bash
context init
```

### "Failed to create gist"
- Check internet connection
- Verify GitHub token has `gist` scope
- Try creating token again

### Editor won't open
```bash
# Set your editor
export EDITOR=nano  # or vim, code, etc

# Then try again
context update
```

## Clean Up After Testing

```bash
# Remove linked CLI
npm unlink -g @context-bridge/cli

# Delete test gist
# Go to: https://gist.github.com/[username]
# Find the test gist
# Click "Delete"

# Remove config
rm -rf ~/.context-bridge
```

## Ready to Ship?

If all tests pass:
1. ✅ CLI works end-to-end
2. ✅ Gist created successfully
3. ✅ AI can read the context
4. ✅ Update workflow works

**Next: Publish to npm!**

```bash
cd /Users/alexa/context-bridge/cli

# Check you're logged in
npm whoami

# Publish
npm publish --access public
```

