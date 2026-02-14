# Quick Start Guide

Get Context Bridge running in **2 minutes**.

---

## What You'll Need

- ✅ Chrome or Firefox browser
- ✅ A GitHub account (free)
- ✅ 2 minutes

---

## Step 1: Install the Extension

### Chrome

1. Go to the [Chrome Web Store](https://chrome.google.com/webstore) (link will be added after approval)
2. Click **"Add to Chrome"**
3. Click **"Add extension"** in the popup
4. Done! You'll see the Context Bridge icon in your toolbar

### Firefox

1. Go to [Firefox Add-ons](https://addons.mozilla.org) (link will be added after approval)
2. Click **"Add to Firefox"**
3. Click **"Add"** in the popup
4. Done! You'll see the Context Bridge icon in your toolbar

### Manual Installation (Developers)

If the extension isn't published yet, or you want to use the latest dev version:

**Chrome**:
```bash
# Clone or download the repo
git clone https://github.com/blackroad-os/context-bridge.git
cd context-bridge

# Open Chrome Extensions page
chrome://extensions/

# Enable "Developer mode" (top right toggle)
# Click "Load unpacked"
# Select the `chrome/` folder
```

**Firefox**:
```bash
# Clone or download the repo
git clone https://github.com/blackroad-os/context-bridge.git
cd context-bridge

# Open Firefox Add-ons page
about:debugging#/runtime/this-firefox

# Click "Load Temporary Add-on"
# Select the `firefox/manifest.json` file
```

---

## Step 2: Create Your Context Gist

### What Is a Gist?

A **GitHub Gist** is like a pastebin for code/text. It's:
- Free forever
- Version controlled
- Private or public (your choice)
- Perfect for storing AI context

### Create Your Gist

1. **Go to GitHub Gists**: [gist.github.com](https://gist.github.com)

2. **Sign in** (or create a free account)

3. **Create a new Gist**:
   - **Filename**: `my-context.md` (or any name)
   - **Description**: "AI Context for Context Bridge" (optional)
   - **Content**: Your context (see examples below)
   - **Visibility**: "Secret" (private) or "Public" (your choice)

4. **Click "Create secret gist"** (or "Create public gist")

5. **Copy the URL** from your browser's address bar
   - Example: `https://gist.github.com/yourusername/abc123def456`
   - Or the raw URL: `https://gist.githubusercontent.com/yourusername/abc123def456/raw/my-context.md`

**Important**: Either URL format works! Context Bridge handles both.

---

## Step 3: Configure Context Bridge

1. **Click the Context Bridge icon** in your browser toolbar

2. **Paste your Gist URL** into the input field

3. **Click "Save"**

4. **Done!** Your context is now ready to use

---

## Step 4: Use It!

### ChatGPT

1. Go to [chat.openai.com](https://chat.openai.com)
2. Open any chat (or start a new one)
3. Look for the **"Insert Context"** button (top right of the chat input)
4. Click it
5. Your context appears in the chat! 🎉

### Claude

1. Go to [claude.ai](https://claude.ai)
2. Open any chat (or start a new one)
3. Look for the **"Insert Context"** button (top right of the chat input)
4. Click it
5. Your context appears in the chat! 🎉

### GitHub Copilot

1. Go to [github.com/copilot](https://github.com/copilot) or any repo with Copilot Chat
2. Open Copilot Chat
3. Look for the **"Insert Context"** button
4. Click it
5. Your context appears in the chat! 🎉

### Google Gemini

1. Go to [gemini.google.com](https://gemini.google.com)
2. Open any chat (or start a new one)
3. Look for the **"Insert Context"** button
4. Click it
5. Your context appears in the chat! 🎉

---

## Example Contexts

Not sure what to put in your Gist? Here are examples:

### For Developers

```markdown
# My Tech Stack

**Languages**: TypeScript, Python, Go
**Frontend**: React, Next.js, Tailwind CSS
**Backend**: Node.js, PostgreSQL, Redis
**Infrastructure**: AWS, Docker, Kubernetes
**Tools**: VS Code, GitHub, Linear

# Coding Conventions

- Use functional components (React)
- Prefer async/await over Promises
- 2-space indentation
- Single quotes for strings
- No semicolons

# Current Project

Building a SaaS product for [description]. 
Target audience: [audience].
Key features: [features].

# Common Tasks

- Code reviews: Focus on security, performance, readability
- Bug fixes: Always add test coverage
- New features: Start with design doc
```

### For Product Managers

```markdown
# Product Context

**Product**: [Product Name]
**Vision**: [One-sentence vision]
**Target Audience**: [Who are we building for?]

# User Personas

## Primary: [Name]
- Age: [X-Y]
- Job: [Title]
- Pain Points: [List]
- Goals: [List]

## Secondary: [Name]
- Age: [X-Y]
- Job: [Title]
- Pain Points: [List]
- Goals: [List]

# Current Priorities

1. [Priority 1]
2. [Priority 2]
3. [Priority 3]

# Success Metrics

- [Metric 1]: [Target]
- [Metric 2]: [Target]
- [Metric 3]: [Target]
```

### For Writers

```markdown
# Writing Style Guide

**Tone**: [Professional/Casual/Friendly/Technical]
**Voice**: [First person/Third person]
**Sentence Length**: [Short/Medium/Long/Mixed]
**Vocabulary Level**: [Simple/Intermediate/Advanced]

# Character Profiles

## [Character Name]
- Age: [X]
- Personality: [Description]
- Background: [Description]
- Goals: [List]
- Conflicts: [List]

## [Character Name]
- Age: [X]
- Personality: [Description]
- Background: [Description]
- Goals: [List]
- Conflicts: [List]

# Story World

**Setting**: [Description]
**Time Period**: [When]
**Key Locations**: [List]
**Rules**: [What's possible/impossible in this world]
```

### For Teams

```markdown
# Company Context

**Company**: [Name]
**Mission**: [Mission statement]
**Values**: [Core values]

# Team Structure

- CEO: [Name]
- CTO: [Name]
- Product: [Name]
- Engineering: [Team size]
- Design: [Team size]

# Communication Norms

- Async-first (use Slack threads)
- Meetings only when necessary
- Document decisions in Notion
- Weekly all-hands on Fridays

# Current Sprint

**Goal**: [Sprint goal]
**Dates**: [Start] to [End]
**Key Tasks**: [List]

# Links

- Roadmap: [URL]
- Docs: [URL]
- Figma: [URL]
```

---

## Tips & Tricks

### Organize Your Context

Use **Markdown headers** to structure your content:

```markdown
# Section 1

Content here...

## Subsection 1.1

More details...

# Section 2

Content here...
```

This makes it easy to scan when it's inserted into AI chats.

### Use Multiple Gists (Coming Soon!)

Currently, Context Bridge supports one Gist. But you can:
- **Switch Gists**: Update the URL in the popup anytime
- **Multiple Gists**: Coming in v2.0 (upvote this feature in GitHub Issues!)

**Workaround for now**:
- Create multiple Gists
- Copy/paste the URLs into a text file
- Swap URLs when you switch projects

### Keep It Updated

Your Gist is **version controlled**. You can:
- Edit it anytime (changes sync automatically after cache expires)
- See edit history (click "Revisions" on Gist page)
- Roll back changes (click any revision)

**Cache note**: Context Bridge caches your Gist for 1 hour (for speed). To force refresh:
- Clear cache in the extension popup, OR
- Wait 1 hour for auto-refresh

### Use Private Gists for Sensitive Info

**Public Gists**:
- Visible to anyone with the URL
- Indexed by Google
- Use for: Open source projects, public documentation

**Secret Gists**:
- Only visible to you (if logged into GitHub)
- Not indexed by Google
- Still accessible via direct URL (not "private" per se)
- Use for: Personal context, company projects

**Private Gists** (GitHub Pro):
- Truly private (requires authentication)
- Context Bridge supports these if you're logged into GitHub

**Recommendation**: Use Secret Gists (free) for most use cases.

### Add Templates

Create a **template library** in a single Gist:

```markdown
# Template 1: Bug Report

I'm seeing a bug in [feature].

Steps to reproduce:
1. [Step 1]
2. [Step 2]

Expected: [What should happen]
Actual: [What actually happens]

---

# Template 2: Feature Request

I'd like to request a feature: [description].

Use case: [Why is this useful?]

Proposed solution: [Your idea]

---

# Template 3: Code Review

Please review this code:

[Paste code here]

Focus on:
- Security
- Performance
- Readability
```

Then copy the relevant template when needed.

---

## Troubleshooting

### Extension Icon Not Showing?

**Chrome**:
1. Go to `chrome://extensions/`
2. Find "Context Bridge"
3. Make sure it's **enabled** (toggle on the right)
4. Click the puzzle piece icon (top right)
5. Pin Context Bridge (click the pin icon)

**Firefox**:
1. Go to `about:addons`
2. Find "Context Bridge"
3. Make sure it's **enabled**
4. Right-click the toolbar
5. Select "Customize Toolbar"
6. Drag Context Bridge icon to the toolbar

### "Insert Context" Button Not Appearing?

**Check the URL**:
- ChatGPT: `chat.openai.com` or `chatgpt.com` ✅
- Claude: `claude.ai` ✅
- Copilot: `github.com` ✅
- Gemini: `gemini.google.com` ✅

**Other domains won't work** (security limitation).

**Refresh the page**:
1. Reload the AI chat page (Cmd/Ctrl + R)
2. The button should appear

**Check browser console** (for devs):
1. Right-click → "Inspect"
2. Go to "Console" tab
3. Look for errors starting with `[Context Bridge]`
4. Report issues to: [GitHub Issues URL]

### Context Not Inserting?

**Check your Gist URL**:
1. Click the Context Bridge icon
2. Make sure the URL is correct
3. Try visiting the URL in a new tab (should show your content)

**Check Gist visibility**:
- If it's a Secret Gist, make sure you're logged into GitHub
- If it's a Private Gist, Context Bridge may not have access (use Secret instead)

**Try clearing cache**:
1. Click the Context Bridge icon
2. Click "Clear Cache"
3. Try again

**Check for errors**:
1. Right-click → "Inspect" (on the AI chat page)
2. Go to "Console" tab
3. Look for errors
4. Report to: [GitHub Issues URL]

### Gist Content Not Updating?

**Cache is active**: Context Bridge caches your Gist for 1 hour (for speed).

**To force refresh**:
- **Option 1**: Click Context Bridge icon → "Clear Cache"
- **Option 2**: Wait 1 hour (cache auto-expires)
- **Option 3**: Edit the Gist URL (add `?v=2` to the end, then remove it later)

**Coming soon**: Manual refresh button (v2.0)

### Rate Limited by GitHub?

**Unlikely, but possible** if you:
- Insert context 60+ times per hour, AND
- Use a public Gist (unauthenticated API)

**Solution**:
1. Use caching (already enabled by default)
2. Use a Secret or Private Gist (higher rate limits)
3. Wait 1 hour for rate limit to reset

**GitHub rate limits**:
- Public Gists (unauthenticated): 60 requests/hour
- Secret/Private Gists (authenticated): 5,000 requests/hour

Context Bridge's cache means you'll never hit these limits in practice.

### Extension Not Working After Update?

**Chrome**:
1. Go to `chrome://extensions/`
2. Find "Context Bridge"
3. Click "Update" (if available)
4. Or toggle off/on to restart

**Firefox**:
1. Go to `about:addons`
2. Click the gear icon
3. Select "Check for Updates"
4. Or disable/enable to restart

**Still not working?**
- Uninstall and reinstall (your Gist URL is saved in browser storage, won't be lost)

---

## Privacy & Security

### What Data Does Context Bridge Collect?

**Nothing.** Seriously.

- ❌ No browsing history
- ❌ No AI conversations
- ❌ No GitHub credentials
- ❌ No analytics
- ❌ No tracking

**What's stored locally**:
- Your Gist URL (in browser storage)
- Cached context (temporary, 1 hour)

**What's transmitted**:
- GitHub API request (to fetch your Gist)
- That's it. No servers, no backend.

See the [Privacy Policy](./PRIVACY_POLICY.md) for full details.

### Is My Context Secure?

**It depends on your Gist visibility**:

- **Public Gist**: Anyone with the URL can read it
- **Secret Gist**: Not indexed by Google, but accessible via URL
- **Private Gist**: Requires GitHub authentication (most secure)

**Recommendation**: Use Secret Gists for most use cases. Use Private Gists for sensitive company/personal data.

### Can Context Bridge Read My AI Conversations?

**No.** Context Bridge:
- ✅ Can insert text into the chat input
- ❌ Cannot read your conversation history
- ❌ Cannot send data to servers (we don't have any!)

**Browser permissions**:
- `storage`: Save your Gist URL locally
- `activeTab`: Insert context into current page
- `host_permissions`: Access ChatGPT, Claude, Copilot, Gemini (only)

**No broad permissions**. We only access the 4 AI platforms.

---

## What's Next?

### Roadmap

**v2.0** (coming soon):
- Multiple Gists (switch per project)
- Template library (pre-made contexts)
- Manual refresh button (force cache update)
- Keyboard shortcuts (power user mode)

**v3.0** (future):
- Microsoft 365 Copilot support
- VS Code extension (inline context)
- CLI tool (terminal workflows)
- Context versioning (time travel)

**Vote on features**: [GitHub Issues URL]

### Get Involved

- ⭐ **Star the repo**: [GitHub URL]
- 🐛 **Report bugs**: [GitHub Issues URL]
- 💡 **Request features**: [GitHub Issues URL]
- 🤝 **Contribute**: [GitHub URL] (MIT License)
- 📣 **Share**: Twitter, LinkedIn, Reddit (help us grow!)

### Stay Updated

- 🐦 **Twitter**: [@blackroad_os](https://twitter.com/blackroad_os) (or your handle)
- 💼 **LinkedIn**: [LinkedIn Page URL]
- 📧 **Email**: updates@blackroad.io (low-volume, major releases only)

---

## Support

### Need Help?

**Free support**:
- 📖 **Docs**: [GitHub README]
- 🔍 **FAQ**: [FAQ.md](./FAQ.md)
- 💬 **GitHub Discussions**: [Discussions URL]

**Bug reports**:
- 🐛 **GitHub Issues**: [Issues URL]
- Include: Browser version, OS, error messages, screenshots

**Email support** (for urgent issues):
- 📧 support@blackroad.io
- Response time: 24-48 hours

---

## Success Stories

*Share how you use Context Bridge! Tweet with #ContextBridge or email us: stories@blackroad.io*

**Example**:

> "Context Bridge saves me 10 minutes a day. I used to copy-paste my tech stack into every ChatGPT conversation. Now it's one click. Game changer." — Alex, Full-Stack Developer

> "I manage 3 clients, each with different brand guidelines. Context Bridge lets me switch contexts in seconds. No more 'wait, which brand voice is this?'" — Taylor, Content Writer

> "Our team uses Context Bridge to share our PRD across Claude and ChatGPT. Everyone's on the same page, instantly." — Jordan, Product Manager

---

## That's It!

You're ready to use Context Bridge. 🎉

**Quick recap**:
1. ✅ Install the extension (Chrome or Firefox)
2. ✅ Create a GitHub Gist with your context
3. ✅ Configure Context Bridge with your Gist URL
4. ✅ Click "Insert Context" in any AI chat

**Questions?** Check the [FAQ](./FAQ.md) or ask in [GitHub Discussions].

**Enjoy!** 🚀

---

*Made with ❤️ by [Alexa](https://github.com/alexaamundson) and the BlackRoad OS community.*
