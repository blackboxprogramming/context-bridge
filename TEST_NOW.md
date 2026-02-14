# Context Bridge Testing Guide

**Goal**: Verify CLI and Extension work before Friday launch

## Test 1: CLI Basic Test (2 minutes)

```bash
cd ~/context-bridge/cli
npm install
node bin/context.js --help
```

**Expected**: Help screen with 7 commands

## Test 2: CLI Login & Init (5 minutes)

**Prerequisites**: 
- GitHub Personal Access Token with 'gist' scope
- Get one at: https://github.com/settings/tokens/new

```bash
# Login
node bin/context.js login

# Create context
node bin/context.js init

# View it
node bin/context.js view

# Get URL
node bin/context.js url
```

**Expected**:
- Login saves token to `~/.context-bridge/config.json`
- Init creates gist and returns URL
- View shows your context
- URL shows shareable link

## Test 3: Extension Load (2 minutes)

```bash
cd ~/context-bridge/extension
```

**Manual Steps**:
1. Open Chrome
2. Go to `chrome://extensions`
3. Enable "Developer mode" (top right)
4. Click "Load unpacked"
5. Select `/Users/alexa/context-bridge/extension` folder
6. Extension should appear with "Context Bridge" name

**Expected**: Extension loads without errors

## Test 4: Extension URL Setup (1 minute)

1. Click Context Bridge icon in toolbar
2. Paste your gist URL from Test 2
3. Click "Save"

**Expected**: Green checkmark, "Context URL saved!"

## Test 5: Extension on Claude.ai (3 minutes)

1. Go to https://claude.ai
2. Start new conversation
3. Look for purple "Insert Context" button near input
4. Click the button

**Expected**: Your context appears in the input field

## Test 6: Extension on ChatGPT (2 minutes)

1. Go to https://chat.openai.com
2. Start new conversation  
3. Look for "Insert Context" button
4. Click it

**Expected**: Context inserts into ChatGPT input

## Quick Win Tests ✅

If you just want to verify it works quickly:

```bash
# CLI: Does it run?
cd ~/context-bridge/cli && npm install && node bin/context.js --help

# Extension: Can Chrome load it?
# Just load it in chrome://extensions and check for errors
```

## Issues You Might See

**CLI Error: "GitHub token not found"**
- Run `node bin/context.js login` first

**Extension: Button doesn't appear**
- Refresh the page
- Check browser console for errors
- Make sure URL is set in popup

**Extension: "No context URL set"**
- Click extension icon, add your gist URL

## What We're Testing

- ✅ CLI installs dependencies
- ✅ CLI commands work
- ✅ GitHub Gist integration works
- ✅ Extension loads in Chrome
- ✅ Extension injects button
- ✅ Extension fetches and inserts context
- ✅ Popup saves/loads URL

## Success Metrics

**Minimum**: CLI login + init works, extension loads
**Good**: CLI creates gist, extension inserts on one platform
**Perfect**: Full workflow works on all 4 AI platforms

---

**Time Budget**: 15 minutes for full test, 3 minutes for quick check

Ready? Let's start with the CLI! 🚀
