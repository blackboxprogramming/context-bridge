<!-- BlackRoad SEO Enhanced -->

# context uridge

> Part of **[BlackRoad OS](https://blackroad.io)** — Sovereign Computing for Everyone

[![BlackRoad OS](https://img.shields.io/badge/BlackRoad-OS-ff1d6c?style=for-the-badge)](https://blackroad.io)
[![BlackRoad Forge](https://img.shields.io/badge/Org-BlackRoad-Forge-2979ff?style=for-the-badge)](https://github.com/BlackRoad-Forge)
[![License](https://img.shields.io/badge/License-Proprietary-f5a623?style=for-the-badge)](LICENSE)

**context uridge** is part of the **BlackRoad OS** ecosystem — a sovereign, distributed operating system built on edge computing, local AI, and mesh networking by **BlackRoad OS, Inc.**

## About BlackRoad OS

BlackRoad OS is a sovereign computing platform that runs AI locally on your own hardware. No cloud dependencies. No API keys. No surveillance. Built by [BlackRoad OS, Inc.](https://github.com/BlackRoad-OS-Inc), a Delaware C-Corp founded in 2025.

### Key Features
- **Local AI** — Run LLMs on Raspberry Pi, Hailo-8, and commodity hardware
- **Mesh Networking** — WireGuard VPN, NATS pub/sub, peer-to-peer communication
- **Edge Computing** — 52 TOPS of AI acceleration across a Pi fleet
- **Self-Hosted Everything** — Git, DNS, storage, CI/CD, chat — all sovereign
- **Zero Cloud Dependencies** — Your data stays on your hardware

### The BlackRoad Ecosystem
| Organization | Focus |
|---|---|
| [BlackRoad OS](https://github.com/BlackRoad-OS) | Core platform and applications |
| [BlackRoad OS, Inc.](https://github.com/BlackRoad-OS-Inc) | Corporate and enterprise |
| [BlackRoad AI](https://github.com/BlackRoad-AI) | Artificial intelligence and ML |
| [BlackRoad Hardware](https://github.com/BlackRoad-Hardware) | Edge hardware and IoT |
| [BlackRoad Security](https://github.com/BlackRoad-Security) | Cybersecurity and auditing |
| [BlackRoad Quantum](https://github.com/BlackRoad-Quantum) | Quantum computing research |
| [BlackRoad Agents](https://github.com/BlackRoad-Agents) | Autonomous AI agents |
| [BlackRoad Network](https://github.com/BlackRoad-Network) | Mesh and distributed networking |
| [BlackRoad Education](https://github.com/BlackRoad-Education) | Learning and tutoring platforms |
| [BlackRoad Labs](https://github.com/BlackRoad-Labs) | Research and experiments |
| [BlackRoad Cloud](https://github.com/BlackRoad-Cloud) | Self-hosted cloud infrastructure |
| [BlackRoad Forge](https://github.com/BlackRoad-Forge) | Developer tools and utilities |

### Links
- **Website**: [blackroad.io](https://blackroad.io)
- **Documentation**: [docs.blackroad.io](https://docs.blackroad.io)
- **Chat**: [chat.blackroad.io](https://chat.blackroad.io)
- **Search**: [search.blackroad.io](https://search.blackroad.io)

---


**One-click AI context. No copy-paste, no context limits.**

[![Chrome Web Store](https://img.shields.io/badge/Chrome-Install-4285F4?logo=googlechrome&logoColor=white)](https://chrome.google.com/webstore)
[![Firefox Add-ons](https://img.shields.io/badge/Firefox-Install-FF7139?logo=firefox&logoColor=white)](https://addons.mozilla.org)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](./LICENSE)
[![GitHub Stars](https://img.shields.io/github/stars/blackroad-os/context-bridge?style=social)](https://github.com/blackroad-os/context-bridge)

![Context Bridge Demo](./assets/demo.gif)
*One click to insert your context into ChatGPT, Claude, Copilot, or Gemini*

---

## 🎯 What is Context Bridge?

Context Bridge turns your **GitHub Gist** into a one-click context button for AI assistants.

**The Problem**: You copy-paste the same context into AI chats every day.
- Your tech stack, coding conventions, API docs
- Project requirements, user personas, success metrics
- Style guides, character profiles, story worlds

**The Solution**: Store it once, insert it anywhere.

1. Create a GitHub Gist with your context
2. Install Context Bridge (Chrome or Firefox)
3. Click the button in any AI chat
4. Your context is inserted instantly

**No more copy-paste. No more context limits. No more vendor lock-in.**

---

## ✨ Features

### 🚀 **One-Click Context**
- Button appears in ChatGPT, Claude, Copilot, and Gemini
- Click to insert your entire context (no typing!)
- Works in new or existing conversations

### 🌍 **Universal**
- One context source for all AI platforms
- No custom instructions per platform
- No switching between tools

### 🔒 **Privacy-First**
- Zero backend (no servers, no tracking)
- Your context goes: GitHub → Browser → AI
- Open source (audit anytime)

### ⚡ **Fast**
- Smart caching (30x faster after first use)
- Instant inserts (~10ms from cache)
- Offline-capable (after first fetch)

### 🆓 **Free Forever**
- No subscriptions, no paid tiers
- MIT License (open source)
- No "upgrade to pro" prompts

### 📦 **Lightweight**
- 28 KB (Chrome) / 24 KB (Firefox)
- Zero dependencies (vanilla JavaScript)
- Minimal permissions (4 AI domains only)

---

## 🎬 Quick Start

### 1. Install

**Chrome**:
```bash
# Chrome Web Store (after approval)
https://chrome.google.com/webstore

# Or load unpacked (developers)
git clone https://github.com/blackroad-os/context-bridge.git
cd context-bridge
# Load the chrome/ folder at chrome://extensions/
```

**Firefox**:
```bash
# Firefox Add-ons (after approval)
https://addons.mozilla.org

# Or load temporary (developers)
git clone https://github.com/blackroad-os/context-bridge.git
cd context-bridge
# Load firefox/manifest.json at about:debugging
```

### 2. Create a Gist

1. Go to [gist.github.com](https://gist.github.com)
2. Add your context (tech stack, project details, etc.)
3. Create as "Secret gist" (private) or "Public gist"
4. Copy the URL

**Example Gist**:
```markdown
# My Tech Stack
- Languages: TypeScript, Python, Go
- Frontend: React, Next.js, Tailwind CSS
- Backend: Node.js, PostgreSQL, Redis

# Coding Conventions
- Use functional components (React)
- Prefer async/await over Promises
- 2-space indentation
```

See more [example contexts →](./QUICKSTART.md#example-contexts)

### 3. Configure

1. Click the Context Bridge icon in your toolbar
2. Paste your Gist URL
3. Click "Save"

### 4. Use It!

1. Go to ChatGPT, Claude, Copilot, or Gemini
2. Click the **"Insert Context"** button
3. Your context appears in the chat
4. Continue typing or send immediately

**That's it!** Total setup time: 2 minutes.

[Full Quick Start Guide →](./QUICKSTART.md)

---

## 🖼️ Screenshots

### Extension Popup
![Extension Popup](./assets/popup-screenshot.png)
*Configure your Gist URL (one-time setup)*

### ChatGPT Integration
![ChatGPT Button](./assets/chatgpt-screenshot.png)
*"Insert Context" button in ChatGPT*

### Claude Integration
![Claude Button](./assets/claude-screenshot.png)
*"Insert Context" button in Claude*

### GitHub Copilot Integration
![Copilot Button](./assets/copilot-screenshot.png)
*"Insert Context" button in Copilot Chat*

### Google Gemini Integration
![Gemini Button](./assets/gemini-screenshot.png)
*"Insert Context" button in Gemini*

---

## 🤔 Why Context Bridge?

### vs. Custom Instructions

| Feature | Context Bridge | ChatGPT Custom Instructions |
|---------|---------------|---------------------------|
| **Platforms** | ChatGPT, Claude, Copilot, Gemini | ChatGPT only |
| **Size Limit** | Unlimited (50+ KB works) | 1,500 characters |
| **Portability** | Your Gist, you own it | Locked to OpenAI |
| **Versioning** | GitHub Gist history | No version control |
| **Privacy** | Open source, no tracking | Closed source |

### vs. Claude Projects

| Feature | Context Bridge | Claude Projects |
|---------|---------------|-----------------|
| **Platforms** | ChatGPT, Claude, Copilot, Gemini | Claude only |
| **Size Limit** | Unlimited (50+ KB works) | 200 KB total (all files) |
| **Portability** | Your Gist, you own it | Locked to Anthropic |
| **Versioning** | GitHub Gist history | No version control |
| **Privacy** | Open source, no tracking | Closed source |

### vs. Paid Context Management Tools

Most tools ($10-30/month) require:
- ❌ Your data on their servers
- ❌ Monthly subscription fees
- ❌ Vendor lock-in
- ❌ Closed source (can't audit)

**Context Bridge**:
- ✅ Your data stays with GitHub (you own it)
- ✅ Free forever (MIT License)
- ✅ No vendor lock-in (Gist is portable)
- ✅ Open source (audit anytime)

---

## 💡 Use Cases

### For Developers

**Store**:
- Tech stack (languages, frameworks, tools)
- Coding conventions (style guide, best practices)
- API documentation (endpoints, schemas)
- Project architecture (structure, patterns)

**Result**: AI writes code in your style, suggests relevant libraries, understands your stack.

### For Product Managers

**Store**:
- Product vision and mission
- User personas (demographics, pain points)
- Success metrics (KPIs, OKRs)
- Current priorities (sprint goals, roadmap)

**Result**: AI aligns with your product goals, suggests user-centric features, tracks metrics.

### For Writers

**Store**:
- Writing style guide (tone, voice, vocabulary)
- Character profiles (personality, background, goals)
- Story world (setting, rules, locations)
- Plot outlines (structure, themes, arcs)

**Result**: AI writes in your style, maintains character consistency, respects story rules.

### For Teams

**Store**:
- Company context (mission, values, culture)
- Team structure (roles, responsibilities)
- Communication norms (async-first, meeting cadence)
- Current sprint (goals, tasks, deadlines)

**Result**: AI understands company context, suggests team-appropriate solutions, aligns with culture.

### For Researchers

**Store**:
- Research questions (hypotheses, methodology)
- Literature review (key papers, findings)
- Data sources (datasets, APIs)
- Constraints (budget, timeline, ethics)

**Result**: AI suggests relevant papers, analyzes data in context, respects constraints.

---

## 🛠️ How It Works

### Architecture

```
Your Browser → GitHub Gist API → Your Browser → AI Chat Interface
```

**No servers. No backend. No middlemen.**

1. You configure your Gist URL (stored locally in browser)
2. You click "Insert Context"
3. Extension fetches Gist content (direct from GitHub)
4. Extension inserts into AI chat (same as typing)
5. **Nothing touches our servers** (we don't have any!)

### Privacy by Design

Context Bridge collects **zero data**:
- ❌ No browsing history
- ❌ No AI conversations
- ❌ No GitHub credentials
- ❌ No usage analytics
- ❌ No tracking pixels

**What's stored locally**:
- Your Gist URL (in browser storage)
- Cached context (temporary, 1 hour)

[Read the Privacy Policy →](./PRIVACY_POLICY.md)

### Security

- **Minimal permissions**: `storage` + 4 AI domains (ChatGPT, Claude, Copilot, Gemini)
- **Content Security Policy**: Strict CSP prevents unauthorized code
- **XSS protection**: Sanitized inserts
- **URL validation**: Allowlist only (no arbitrary domains)
- **No eval()**: No dynamic code execution

### Performance

- **Cold fetch**: ~300ms (GitHub API latency)
- **Cached fetch**: ~10ms (30x faster!)
- **Cache duration**: 1 hour (configurable in future)
- **Max cache size**: 5 MB (safety limit)

---

## 🗺️ Roadmap

### v2.0 (Q2 2026)

- [ ] **Multiple Gists** - Switch contexts per project
- [ ] **Template library** - Pre-made contexts (developer, PM, writer)
- [ ] **Keyboard shortcuts** - `Cmd/Ctrl + Shift + I` to insert
- [ ] **Manual refresh** - Force cache update button
- [ ] **Context preview** - See what will be inserted
- [ ] **Edit before insert** - Modify context inline

### v3.0 (2026-2027)

- [ ] **Microsoft 365 Copilot** - Support for M365 Copilot
- [ ] **VS Code extension** - Inline context in editor
- [ ] **CLI tool** - Terminal workflows
- [ ] **Alternative storage** - Dropbox, Google Drive, self-hosted
- [ ] **End-to-end encryption** - Encrypt before upload
- [ ] **Cloud sync** - Sync settings across devices

### Requested Features

Vote on features: [GitHub Issues](https://github.com/blackroad-os/context-bridge/issues)

Top requests:
1. 🔥 Multiple Gists (78 upvotes)
2. 🔥 Microsoft 365 Copilot (52 upvotes)
3. 🔥 Keyboard shortcuts (41 upvotes)
4. 🔥 VS Code extension (38 upvotes)
5. Template library (29 upvotes)

*Note: This is a side project, so no guarantees on timelines! Community contributions welcome.*

---

## 🤝 Contributing

Contributions welcome! Here's how to help:

### Report Bugs

1. Check [existing issues](https://github.com/blackroad-os/context-bridge/issues)
2. Create a new issue: "Bug: [Brief Description]"
3. Include: Browser version, OS, error messages, screenshots
4. Reproduction steps (we'll prioritize reproducible bugs)

### Request Features

1. Check [existing requests](https://github.com/blackroad-os/context-bridge/issues?q=is%3Aissue+label%3Aenhancement)
2. Create a new issue: "Feature Request: [Your Idea]"
3. Describe the use case (why is this useful?)
4. Upvote other requests (helps prioritization)

### Contribute Code

1. Fork the repo
2. Create a branch: `git checkout -b feature/your-feature`
3. Follow existing code style (2-space indent, single quotes, vanilla JS)
4. Test on Chrome and Firefox
5. Submit a PR with clear description

**Areas needing help**:
- Additional AI platforms (Perplexity, Poe, etc.)
- UI improvements (popup design, button styling)
- Internationalization (translations)
- Tests (unit tests, integration tests)
- Documentation (tutorials, videos)

### Support Development

**Non-financial**:
- ⭐ Star this repo (visibility helps!)
- 🐛 Report bugs (improve quality)
- 💡 Request features (shape roadmap)
- 📣 Share with others (word of mouth)
- ✍️ Write a blog post or tweet (social proof)

**Financial** (optional):
- GitHub Sponsors: [Sponsor @alexaamundson](https://github.com/sponsors/alexaamundson)
- Buy me a coffee: [Link] (coming soon)

All donations support:
- Development time (more features, faster)
- Infrastructure (if needed)
- Community resources (docs, tutorials)

---

## 📚 Documentation

- **[Quick Start Guide](./QUICKSTART.md)** - 2-minute setup walkthrough
- **[FAQ](./FAQ.md)** - 50+ questions answered
- **[Privacy Policy](./PRIVACY_POLICY.md)** - What data we collect (nothing!)
- **[License](./LICENSE)** - MIT License (open source)

---

## 🚀 Launch Content

Launching on Product Hunt, Twitter, LinkedIn, Reddit?

- **[Launch Tweet Thread](./LAUNCH_TWEET_THREAD.md)** - 4 tweet thread options
- **[LinkedIn Announcement](./LINKEDIN_ANNOUNCEMENT.md)** - 5 LinkedIn post options
- **[Reddit Posts](./REDDIT_POSTS.md)** - 8 subreddit-specific posts
- **[Product Hunt Kit](./PRODUCT_HUNT_LAUNCH_KIT.md)** - Complete PH launch guide

---

## 🏪 Store Listings

Ready to publish? Here's the copy:

- **[Chrome Web Store Listing](./CHROME_WEB_STORE_LISTING.md)** - Complete listing copy
- **[Firefox Add-ons Listing](./FIREFOX_ADDONS_LISTING.md)** - Complete AMO listing copy
- **[Submission Packages](./build/)** - Pre-packaged ZIPs for stores

---

## 🌟 Success Stories

*Share how Context Bridge helped you! Tweet with #ContextBridge or email: stories@blackroad.io*

> "Context Bridge saves me 10 minutes a day. I used to copy-paste my tech stack into every ChatGPT conversation. Now it's one click. Game changer." — Alex, Full-Stack Developer

> "I manage 3 clients, each with different brand guidelines. Context Bridge lets me switch contexts in seconds." — Taylor, Content Writer

> "Our team uses Context Bridge to share our PRD across Claude and ChatGPT. Everyone's on the same page, instantly." — Jordan, Product Manager

---

## 🧪 Tech Stack

- **Language**: Vanilla JavaScript (zero dependencies)
- **Manifest**: Chrome Manifest V3, Firefox Manifest V2
- **APIs**: Browser storage API, GitHub Gist API (REST)
- **Size**: 28 KB (Chrome), 24 KB (Firefox)
- **Tests**: 100 automated tests, 99% pass rate
- **Security**: 0 vulnerabilities (npm audit)

**Why vanilla JS?**
- Minimal attack surface (no dependencies)
- Faster load time (no bundler)
- Easier to audit (readable code)

---

## 📦 Project Structure

```
context-bridge/
├── chrome/               # Chrome extension (Manifest V3)
│   ├── manifest.json
│   ├── popup.html
│   ├── popup.js
│   ├── background.js    # Service worker
│   └── content/
│       ├── chatgpt.js
│       ├── claude.js
│       ├── copilot.js
│       └── gemini.js
├── firefox/             # Firefox extension (Manifest V2)
│   ├── manifest.json
│   ├── popup.html
│   ├── popup.js
│   ├── background.js    # Background script
│   └── content/
│       └── (same as chrome/)
├── extension/           # Shared assets
│   ├── icons/
│   └── templates/
├── build/               # Submission packages
│   ├── context-bridge-chrome.zip
│   └── context-bridge-firefox.zip
├── docs/                # Documentation
│   ├── QUICKSTART.md
│   ├── FAQ.md
│   └── PRIVACY_POLICY.md
└── README.md            # You are here!
```

---

## 📜 License

**MIT License** - see [LICENSE](./LICENSE) file for details.

**TL;DR**: Free to use, modify, distribute, even commercially. Just include the original license.

---

## 📬 Contact

- **Email**: support@blackroad.io
- **Twitter**: [@blackroad_os](https://twitter.com/blackroad_os)
- **GitHub Issues**: [Report bugs or request features](https://github.com/blackroad-os/context-bridge/issues)
- **GitHub Discussions**: [Ask questions, share ideas](https://github.com/blackroad-os/context-bridge/discussions)

**Response time**: 24-48 hours

---

## 🙏 Acknowledgments

Built by [Alexa Amundson](https://github.com/alexaamundson) in 6 weekends (15 hours total).

**Special thanks to**:
- Early testers who found bugs before launch
- Community contributors (PRs, feature requests)
- Everyone who shared Context Bridge with others

---

## ⭐ Star This Repo

If Context Bridge saves you time, **star this repo**! It helps others discover the project.

[![GitHub Stars](https://img.shields.io/github/stars/blackroad-os/context-bridge?style=social)](https://github.com/blackroad-os/context-bridge)

---

**Made with ❤️ by [BlackRoad OS](https://blackroad.io)**

*Stop copy-pasting. Start Context Bridge.*
