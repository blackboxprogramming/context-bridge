# Frequently Asked Questions (FAQ)

Everything you need to know about Context Bridge.

**Quick links**: [General](#general) | [Setup](#setup--installation) | [Usage](#usage) | [Privacy](#privacy--security) | [Troubleshooting](#troubleshooting) | [Technical](#technical) | [Pricing](#pricing--licensing) | [Roadmap](#roadmap--features)

---

## General

### What is Context Bridge?

Context Bridge is a browser extension that lets you share context with AI assistants (ChatGPT, Claude, GitHub Copilot, Gemini) in one click.

Instead of copy-pasting your tech stack, project details, or coding conventions into every AI conversation, you:
1. Store your context in a GitHub Gist (once)
2. Click a button in any AI chat
3. Your context is inserted automatically

Think of it as "custom instructions for everything" that you control.

### How is this different from custom instructions?

**Custom instructions** (ChatGPT, Claude) are:
- Platform-specific (can't share across ChatGPT + Claude)
- Limited in size (200-1,500 chars depending on platform)
- Locked to the vendor (no portability)

**Context Bridge** is:
- Universal (one context source for all AI platforms)
- Unlimited (50+ KB of context if needed)
- Portable (it's your Gist, not locked to OpenAI/Anthropic/Google)

### Which AI platforms are supported?

Currently supported:
- ✅ **ChatGPT** (chat.openai.com)
- ✅ **Claude** (claude.ai)
- ✅ **GitHub Copilot** (github.com)
- ✅ **Google Gemini** (gemini.google.com)

Coming soon:
- 🔜 Microsoft 365 Copilot (in progress)
- 🔜 Perplexity (roadmap)
- 🔜 Poe (roadmap)

Want another platform? [Request it on GitHub](https://github.com/blackroad-os/context-bridge/issues)!

### Which browsers are supported?

- ✅ **Chrome** (and Chromium-based: Brave, Edge, Opera)
- ✅ **Firefox**

Safari support is not currently planned (Apple's extension API limitations).

### Is it free?

**Yes, completely free forever.**

Context Bridge is open source (MIT License). No:
- ❌ Paid tiers
- ❌ Subscriptions
- ❌ Freemium model
- ❌ "Upgrade to Pro" prompts

If you want to support development, you can:
- ⭐ Star the [GitHub repo](https://github.com/blackroad-os/context-bridge)
- 🐛 Report bugs or request features
- 🤝 Contribute code (pull requests welcome!)
- 📣 Share with others (word of mouth helps!)

### Why is it free?

Because I built it for myself and decided to share it.

Context Bridge has **no backend costs** (zero servers, no infrastructure). The only "cost" is my time, which I've already invested (15 hours total across 6 sessions).

I believe privacy tools should be:
- Free (accessible to everyone)
- Open source (verifiable, auditable)
- No strings attached (no monetization via data)

### Who built this?

**Alexa Amundson**, founder of BlackRoad OS.

I'm a full-stack developer who uses AI assistants constantly (ChatGPT, Claude, Copilot, Gemini). I got tired of copy-pasting the same context into every conversation, so I built Context Bridge in my spare time (6 weekends).

It's open source (MIT License), so anyone can contribute!

- 🐦 Twitter: [@blackroad_os](https://twitter.com/blackroad_os)
- 💼 LinkedIn: [BlackRoad OS](https://linkedin.com/company/blackroad-os)
- 🌐 Website: [blackroad.io](https://blackroad.io)

---

## Setup & Installation

### How do I install Context Bridge?

**Chrome**:
1. Go to the [Chrome Web Store](https://chrome.google.com/webstore) (link after approval)
2. Click "Add to Chrome"
3. Click "Add extension" in the popup
4. Done!

**Firefox**:
1. Go to [Firefox Add-ons](https://addons.mozilla.org) (link after approval)
2. Click "Add to Firefox"
3. Click "Add" in the popup
4. Done!

See the [Quick Start Guide](./QUICKSTART.md) for detailed instructions.

### How do I create a GitHub Gist?

1. Go to [gist.github.com](https://gist.github.com)
2. Sign in (or create a free GitHub account)
3. Add your context (tech stack, project details, etc.)
4. Choose "Secret gist" (private) or "Public gist"
5. Click "Create secret gist"
6. Copy the URL from your browser

**Example Gist URL**: `https://gist.github.com/yourusername/abc123def456`

See the [Quick Start Guide](./QUICKSTART.md#step-2-create-your-context-gist) for examples.

### Do I need a GitHub account?

**Yes**, to create a Gist.

But GitHub is free forever, and you probably already have an account if you're a developer!

If you're not a developer, creating a GitHub account takes 2 minutes:
1. Go to [github.com/join](https://github.com/join)
2. Enter email, password, username
3. Verify email
4. Done!

### What should I put in my Gist?

**Anything you want to share with AI assistants!**

Common examples:
- **Developers**: Tech stack, coding conventions, API docs
- **Product Managers**: User personas, product vision, success metrics
- **Writers**: Style guide, character profiles, story world
- **Teams**: Company context, communication norms, current sprint

See the [Quick Start Guide](./QUICKSTART.md#example-contexts) for 5 copy-paste templates.

### Can I use multiple Gists?

**Not yet, but coming in v2.0!**

Right now, Context Bridge supports one Gist at a time.

**Workaround**:
1. Create multiple Gists (one per project)
2. Save the URLs in a text file
3. Swap URLs in the Context Bridge popup when switching projects

**v2.0 roadmap**: Multi-Gist support with project switching (upvote this on [GitHub Issues](https://github.com/blackroad-os/context-bridge/issues)!).

### How do I update my context?

1. Go to your Gist on GitHub
2. Click "Edit"
3. Make changes
4. Click "Update secret gist"

**Context Bridge will auto-refresh after 1 hour** (cache expiration).

To force immediate refresh:
- Click the Context Bridge icon → "Clear Cache"

### Can I use private Gists?

**Yes!** Context Bridge supports:
- ✅ **Public Gists** (visible to anyone)
- ✅ **Secret Gists** (not indexed, but accessible via URL)
- ✅ **Private Gists** (requires GitHub authentication)

**Recommendation**: Use **Secret Gists** for most use cases (free, not indexed by Google).

Use **Private Gists** if your context contains sensitive company/personal data.

---

## Usage

### Where is the "Insert Context" button?

The button appears in the chat input area on supported platforms:

- **ChatGPT**: Top right of the message input box
- **Claude**: Top right of the message input box
- **Copilot**: In the Copilot Chat panel
- **Gemini**: Top right of the message input box

If you don't see it:
1. Refresh the page (Cmd/Ctrl + R)
2. Check you're on the correct domain (see [Which AI platforms are supported?](#which-ai-platforms-are-supported))
3. Make sure the extension is enabled (`chrome://extensions/` or `about:addons`)

### How do I insert context?

1. Open any AI chat (ChatGPT, Claude, Copilot, or Gemini)
2. Click the **"Insert Context"** button
3. Your context appears in the chat input
4. Continue typing or send immediately

**That's it!** No copy-paste, no context limits.

### Does it work in existing conversations?

**Yes!** You can insert context into:
- New conversations (start a new chat)
- Existing conversations (mid-conversation)

Context Bridge just inserts text into the chat input—same as if you typed it yourself.

### Can I edit the context before sending?

**Yes!** After clicking "Insert Context":
1. Your context appears in the chat input
2. Edit it as needed
3. Send when ready

Context Bridge doesn't automatically send—you're in control.

### Does it work on mobile?

**No, not yet.**

Context Bridge is currently desktop-only (Chrome and Firefox on Windows, macOS, Linux).

Mobile browser extensions have limited APIs, so supporting mobile would require:
- iOS Safari extension (different codebase)
- Android Chrome/Firefox (limited extension support)

This is on the long-term roadmap, but not a priority (most AI chat usage is desktop).

### Can I use keyboard shortcuts?

**Not yet, but coming in v2.0!**

Planned shortcuts:
- `Cmd/Ctrl + Shift + I` → Insert context
- `Cmd/Ctrl + Shift + C` → Clear cache
- `Cmd/Ctrl + Shift + G` → Switch Gist (multi-Gist support)

Upvote this feature on [GitHub Issues](https://github.com/blackroad-os/context-bridge/issues)!

### What happens if I click the button twice?

Your context is inserted **twice** (duplicated in the chat input).

Just press Cmd/Ctrl + Z to undo, or delete the duplicate manually.

**Note**: This won't cause errors or break anything—it's just redundant text.

### Can I insert context into other apps (Slack, Notion, etc.)?

**No, Context Bridge only works with AI chat platforms.**

Why? Because:
1. Each platform has different input elements (Slack uses `contenteditable`, Notion uses custom editors)
2. Security: Browser extensions need explicit permissions for each domain
3. Use case: Context Bridge is designed for AI assistants, not general text insertion

If you need context insertion in other apps, consider:
- Text expander tools (TextExpander, aText, Espanso)
- Clipboard managers (Paste, Alfred, Clipy)

---

## Privacy & Security

### What data does Context Bridge collect?

**Nothing.**

Context Bridge:
- ❌ Does NOT collect browsing history
- ❌ Does NOT collect AI conversations
- ❌ Does NOT collect GitHub credentials
- ❌ Does NOT collect usage analytics
- ❌ Does NOT track you
- ❌ Does NOT send data to servers (we don't have any!)

**What's stored locally**:
- Your Gist URL (in browser storage, on your device)
- Cached context (temporary, expires after 1 hour)

See the [Privacy Policy](./PRIVACY_POLICY.md) for full details.

### Is my context secure?

**It depends on your Gist visibility**:

| Gist Type | Visibility | Recommendation |
|-----------|-----------|----------------|
| **Public** | Anyone can read via URL or search | Use for open source projects, public docs |
| **Secret** | Anyone with URL can read, not indexed | Use for personal context, most projects |
| **Private** | Requires GitHub authentication | Use for sensitive company/personal data |

**Recommendation**: Use **Secret Gists** for most use cases.

### Can Context Bridge read my AI conversations?

**No.**

Context Bridge can:
- ✅ Insert text into the chat input (what you allow)
- ✅ Read the current page URL (to detect AI platforms)

Context Bridge **cannot**:
- ❌ Read your conversation history
- ❌ Access your AI account credentials
- ❌ Send data to servers (we don't have any!)

**Browser permissions** (minimal):
- `storage`: Save your Gist URL locally
- `activeTab`: Insert context into current page
- `host_permissions`: Access ChatGPT, Claude, Copilot, Gemini (only these 4 domains)

### Is Context Bridge open source?

**Yes!** MIT License.

- **Source code**: [GitHub](https://github.com/blackroad-os/context-bridge)
- **Audit anytime**: Anyone can review the code
- **Contribute**: Pull requests welcome

**No hidden behavior.** What you see is what you get.

### What happens to my data if Context Bridge shuts down?

**Nothing, because we don't have your data!**

Your context is in **your GitHub Gist**:
- You own it
- You control it
- It's not dependent on Context Bridge

If Context Bridge disappeared tomorrow:
- Your Gist would still exist
- You could use any other tool to access it
- You could copy-paste manually (like you used to)

**No vendor lock-in.** Your data is yours.

### Can GitHub see my context?

**Yes, if you use their service.**

Your Gist is hosted on GitHub's servers, so GitHub can technically access it (same as any cloud service).

**If this concerns you**:
- Use **Private Gists** (requires authentication, better security)
- Use **end-to-end encrypted storage** (coming in v3.0—community requested feature)
- Self-host your context (not supported yet, but possible with code modification)

Context Bridge is designed to be **GitHub-optional** in the future (v3.0 roadmap).

### Is Context Bridge GDPR compliant?

**Yes.**

Context Bridge:
- ✅ Collects no personal data (GDPR Article 4)
- ✅ Stores data locally only (GDPR Article 4)
- ✅ No tracking or profiling (GDPR Article 22)
- ✅ Open source (auditable, transparent)

Your Gist is subject to **GitHub's GDPR compliance**, not ours (we don't store it).

See the [Privacy Policy](./PRIVACY_POLICY.md) for full GDPR/CCPA details.

---

## Troubleshooting

### The extension icon isn't showing. What do I do?

**Chrome**:
1. Go to `chrome://extensions/`
2. Find "Context Bridge"
3. Make sure it's **enabled** (toggle on the right)
4. Click the puzzle piece icon (top right of browser)
5. Pin Context Bridge (click the pin icon)

**Firefox**:
1. Go to `about:addons`
2. Find "Context Bridge"
3. Make sure it's **enabled**
4. Right-click the toolbar → "Customize Toolbar"
5. Drag Context Bridge icon to the toolbar

### The "Insert Context" button isn't appearing. Why?

**Common reasons**:

1. **Wrong URL**: Context Bridge only works on:
   - `chat.openai.com` or `chatgpt.com` (ChatGPT)
   - `claude.ai` (Claude)
   - `github.com` (Copilot)
   - `gemini.google.com` (Gemini)

2. **Page not refreshed**: Reload the page (Cmd/Ctrl + R)

3. **Extension disabled**: Check `chrome://extensions/` or `about:addons`

4. **Console errors**: Right-click → "Inspect" → "Console" tab → look for `[Context Bridge]` errors

### Context isn't inserting when I click the button. What's wrong?

**Check your Gist URL**:
1. Click the Context Bridge icon
2. Verify the URL is correct
3. Visit the URL in a new tab (should show your content)

**Check Gist visibility**:
- Private Gists require GitHub authentication (make sure you're logged in)
- Secret/Public Gists work without authentication

**Try clearing cache**:
1. Click Context Bridge icon → "Clear Cache"
2. Try again

**Still not working?**
- Check browser console for errors (Right-click → "Inspect" → "Console")
- Report the issue on [GitHub Issues](https://github.com/blackroad-os/context-bridge/issues)

### My Gist content isn't updating. Why?

**Cache is active** (1 hour default).

Context Bridge caches your Gist to:
- Reduce GitHub API calls
- Speed up inserts (30x faster)
- Avoid rate limits

**To force refresh**:
- **Option 1**: Click Context Bridge icon → "Clear Cache" (instant)
- **Option 2**: Wait 1 hour (cache auto-expires)
- **Option 3**: Edit the Gist URL (add `?v=2` to the end, then remove later)

**Coming soon**: Manual refresh button in v2.0.

### I'm getting rate limited by GitHub. What do I do?

**This is extremely unlikely** (you'd need to insert context 60+ times per hour).

**If it happens**:
1. **Enable caching** (it's on by default—reduces API calls by 30x)
2. **Use a Secret or Private Gist** (higher rate limits with authentication)
3. **Wait 1 hour** (GitHub rate limits reset after 1 hour)

**GitHub rate limits**:
- Public Gists (unauthenticated): 60 requests/hour
- Secret/Private Gists (authenticated): 5,000 requests/hour

With caching, you'll never hit these limits in practice.

### Context Bridge stopped working after a browser update. Help!

**Chrome**:
1. Go to `chrome://extensions/`
2. Click "Update" (top right)
3. Or toggle Context Bridge off/on

**Firefox**:
1. Go to `about:addons`
2. Click the gear icon → "Check for Updates"
3. Or disable/enable Context Bridge

**Still not working?**
- Uninstall and reinstall (your Gist URL is saved locally, won't be lost)

### Can I use Context Bridge on multiple devices?

**Yes, but you need to configure it on each device.**

Context Bridge stores your Gist URL **locally** (in browser storage), not in the cloud.

**To use on multiple devices**:
1. Install Context Bridge on each device
2. Configure the same Gist URL on each device
3. Done!

**Coming soon**: Cloud sync (v3.0 roadmap—syncs settings across devices).

---

## Technical

### What tech stack is Context Bridge built with?

- **Language**: Vanilla JavaScript (no TypeScript, no frameworks)
- **Manifest**: Chrome Manifest V3, Firefox Manifest V2
- **Size**: 28 KB (Chrome), 24 KB (Firefox)
- **Dependencies**: Zero (no npm packages, no libraries)
- **APIs**: Browser storage API, GitHub Gist API (REST)

**Why vanilla JS?**
- Minimal attack surface (no dependencies = no supply chain attacks)
- Faster load time (no bundler, no transpiler)
- Easier to audit (all code is readable, no minification)

### Why no TypeScript?

**Short answer**: Speed and simplicity.

**Long answer**:
- I prototyped in TypeScript, but vanilla JS shipped faster
- TypeScript adds build complexity (tsc, bundler, etc.)
- For a 28 KB extension, the type safety benefit is marginal
- The codebase is small enough to understand without types

**Future**: If the codebase grows, I may migrate to TypeScript (community vote).

### Why GitHub Gist?

**You already own your data.**

Alternatives considered:
- **Custom backend**: Requires servers, costs money, privacy risk
- **Local files**: Doesn't sync across devices, no version control
- **Other cloud storage**: Vendor lock-in, requires OAuth, privacy concerns

**GitHub Gist is**:
- Free forever
- Version controlled (edit history)
- Accessible anywhere (URL-based)
- No vendor lock-in (you own the data)

**Future**: v3.0 may support alternative storage (Dropbox, Google Drive, self-hosted).

### How does caching work?

**Cache flow**:
1. First insert: Fetch from GitHub (cold, ~300ms)
2. Store in browser's `localStorage` (max 5 MB)
3. Subsequent inserts: Read from cache (~10ms, 30x faster)
4. Cache expires: After 1 hour (configurable in future)

**Why cache?**
- Faster inserts (300ms → 10ms)
- Reduces GitHub API calls (avoid rate limits)
- Works offline (after first fetch)

**Cache eviction**:
- Automatic: After 1 hour
- Manual: Clear Cache button in popup
- Browser: Clearing browser data also clears cache

### What permissions does Context Bridge require?

**Minimal permissions**:
- `storage`: Save your Gist URL locally (on your device)
- `activeTab`: Insert context into the current page
- `host_permissions`: Access ChatGPT, Claude, Copilot, Gemini (only these 4 domains)

**No broad permissions** (no `<all_urls>`, no `history`, no `tabs`).

### Is Context Bridge compatible with other extensions?

**Yes, generally.**

Potential conflicts:
- Other extensions that modify AI chat inputs (rare)
- Extensions that block GitHub API requests (uncommon)
- Extensions that disable JavaScript (Context Bridge won't work)

**If you encounter conflicts**, report them on [GitHub Issues](https://github.com/blackroad-os/context-bridge/issues).

### Can I self-host Context Bridge?

**Yes!** It's open source (MIT License).

**To self-host**:
1. Clone the repo: `git clone https://github.com/blackroad-os/context-bridge.git`
2. Load unpacked in Chrome (`chrome://extensions/`) or Firefox (`about:debugging`)
3. Modify the code as needed
4. Distribute to your team (sideload, not via store)

**Note**: Self-hosted versions won't auto-update (you'll need to pull updates manually).

### Can I contribute to Context Bridge?

**Yes! Contributions welcome.**

**How to contribute**:
1. Fork the repo: [GitHub](https://github.com/blackroad-os/context-bridge)
2. Create a branch: `git checkout -b feature/your-feature`
3. Make changes (follow existing code style)
4. Run tests: (tests coming in v2.0)
5. Submit a PR: [Pull Requests](https://github.com/blackroad-os/context-bridge/pulls)

**Areas needing help**:
- Additional AI platforms (Perplexity, Poe, etc.)
- UI improvements (popup design, button styling)
- Internationalization (i18n, translations)
- Tests (unit tests, integration tests)

See [CONTRIBUTING.md](./CONTRIBUTING.md) for guidelines (coming soon).

---

## Pricing & Licensing

### How much does Context Bridge cost?

**$0. Free forever.**

No:
- ❌ Subscriptions
- ❌ Paid tiers
- ❌ In-app purchases
- ❌ "Upgrade to Pro" prompts

### Is there a paid version?

**No, and there never will be.**

Context Bridge is built on a zero-backend architecture (no servers = no costs). I have no reason to monetize it.

If you want to support development:
- ⭐ Star the [GitHub repo](https://github.com/blackroad-os/context-bridge)
- 🐛 Report bugs or request features
- 🤝 Contribute code
- 📣 Share with others

### What's the license?

**MIT License** (open source).

You're free to:
- ✅ Use it commercially
- ✅ Modify the code
- ✅ Distribute copies
- ✅ Sublicense (create derivative works)

**No restrictions** (just include the original license).

See [LICENSE](./LICENSE) for full text.

### Can I use Context Bridge at my company?

**Yes!** No restrictions.

Context Bridge is:
- Free for commercial use
- Privacy-first (no data collection)
- Self-hostable (if needed)

**For enterprise deployments**:
- Self-host the extension (distribute via MDM)
- Use Private Gists (requires GitHub Enterprise)
- Custom integrations (MIT License allows modifications)

Need help with enterprise deployment? Email: enterprise@blackroad.io

---

## Roadmap & Features

### What's coming in v2.0?

**Planned features**:
- ✅ Multiple Gists (switch per project)
- ✅ Template library (pre-made contexts)
- ✅ Keyboard shortcuts (power user mode)
- ✅ Manual refresh button (force cache update)
- ✅ Context preview (see what will be inserted)
- ✅ Edit before insert (modify context inline)

**Timeline**: Q2 2026 (no guarantees—this is a side project!)

Upvote features on [GitHub Issues](https://github.com/blackroad-os/context-bridge/issues).

### What's coming in v3.0?

**Long-term roadmap**:
- ✅ Microsoft 365 Copilot support
- ✅ VS Code extension (inline context in editor)
- ✅ CLI tool (terminal workflows)
- ✅ Alternative storage (Dropbox, Google Drive, self-hosted)
- ✅ End-to-end encryption (local encryption before upload)
- ✅ Cloud sync (sync settings across devices)

**Timeline**: 2026-2027 (community-driven priorities)

### Can I request a feature?

**Yes! Feature requests welcome.**

**How to request**:
1. Check [GitHub Issues](https://github.com/blackroad-os/context-bridge/issues) (maybe it's already requested)
2. If not, create a new issue: "Feature Request: [Your Idea]"
3. Describe the use case (why is this useful?)
4. Upvote other requests (helps me prioritize)

**Popular requests get built first** (community-driven development).

### Will Context Bridge always be free?

**Yes. Forever.**

I built Context Bridge because I needed it, and I'm sharing it because others do too.

**Promise**:
- Context Bridge will remain free (no paid tiers)
- Context Bridge will remain open source (MIT License)
- If I ever stop maintaining it, I'll hand it off to the community (no abandonment)

### How can I support Context Bridge?

**Non-financial support**:
- ⭐ Star the [GitHub repo](https://github.com/blackroad-os/context-bridge)
- 🐛 Report bugs (help improve quality)
- 💡 Request features (shape the roadmap)
- 🤝 Contribute code (pull requests welcome)
- 📣 Share with others (word of mouth is huge!)
- ✍️ Write a blog post or tweet (social proof helps)

**Financial support** (optional):
- GitHub Sponsors: [Sponsor Alexa](https://github.com/sponsors/alexaamundson)
- Buy me a coffee: [Link] (coming soon)

**All donations go toward**:
- Development time (more features, faster)
- Infrastructure (if needed in the future)
- Community resources (docs, tutorials)

---

## Comparisons

### How is Context Bridge different from ChatGPT custom instructions?

| Feature | Context Bridge | ChatGPT Custom Instructions |
|---------|---------------|---------------------------|
| **Platforms** | ChatGPT, Claude, Copilot, Gemini | ChatGPT only |
| **Size limit** | Unlimited (50+ KB works) | 1,500 characters |
| **Portability** | Your Gist, you own it | Locked to OpenAI |
| **Versioning** | GitHub Gist history | No version control |
| **Privacy** | Open source, no tracking | Closed source |
| **Cost** | Free forever | Free (ChatGPT Plus for Pro) |

**Use custom instructions for**: Short, ChatGPT-specific context (tone, style)

**Use Context Bridge for**: Long, multi-platform context (tech stack, project details)

### How is Context Bridge different from Claude Projects?

| Feature | Context Bridge | Claude Projects |
|---------|---------------|-----------------|
| **Platforms** | ChatGPT, Claude, Copilot, Gemini | Claude only |
| **Size limit** | Unlimited (50+ KB works) | 200 KB total (all files) |
| **Portability** | Your Gist, you own it | Locked to Anthropic |
| **Versioning** | GitHub Gist history | No version control |
| **Privacy** | Open source, no tracking | Closed source |
| **Cost** | Free forever | Free (Claude Pro for more projects) |

**Use Claude Projects for**: Claude-specific workflows (multi-file context)

**Use Context Bridge for**: Cross-platform context (one source, all AIs)

### How is Context Bridge different from [Paid Tool X]?

Most context management tools ($10-30/month) offer:
- Custom backend (your data on their servers)
- Team collaboration (shared contexts)
- Analytics (usage tracking)
- Support (SLA, priority)

**Context Bridge offers**:
- Zero backend (your data stays with GitHub)
- No team features (yet—coming in v3.0)
- No analytics (privacy-first)
- Community support (GitHub Issues, Discussions)

**Use paid tools for**: Enterprise teams, advanced features, SLA

**Use Context Bridge for**: Individual users, privacy, simplicity, no cost

---

## Still Have Questions?

**Search this FAQ**: Press Cmd/Ctrl + F and search for keywords

**Check the docs**:
- [Quick Start Guide](./QUICKSTART.md) - 2-minute setup
- [Privacy Policy](./PRIVACY_POLICY.md) - What data we collect (nothing!)
- [GitHub README](https://github.com/blackroad-os/context-bridge) - Project overview

**Ask the community**:
- [GitHub Discussions](https://github.com/blackroad-os/context-bridge/discussions) - Community Q&A
- [GitHub Issues](https://github.com/blackroad-os/context-bridge/issues) - Bug reports, feature requests

**Contact support**:
- 📧 Email: support@blackroad.io
- 🐦 Twitter: [@blackroad_os](https://twitter.com/blackroad_os)
- Response time: 24-48 hours

---

*Last updated: February 13, 2026*
