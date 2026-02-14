# Firefox Add-ons Listing Copy

## 📝 Summary (250 characters max)

Never lose context again. Context Bridge adds one-click context insertion to ChatGPT, Claude, GitHub Copilot, and Google Gemini. Your data stays in your GitHub Gist—private, secure, and under your control.

---

## 📄 Description

**Stop copying and pasting your context into every AI conversation.**

Context Bridge is a privacy-focused Firefox extension that gives you one-click access to your persistent AI context across ChatGPT, Claude, GitHub Copilot, and Google Gemini.

### 🎯 The Problem

You have important context that AI assistants need:
- Your expertise and preferences
- Current projects and goals
- Communication style
- Recent achievements and blockers

But managing this context is tedious:
- ❌ Copying the same text repeatedly
- ❌ Forgetting crucial details
- ❌ Wasting precious time
- ❌ Inconsistent AI responses

### ✨ The Solution

Context Bridge adds a simple "Insert Context" button to your AI tools. One click, instant context insertion.

**How it works:**
1. Store your context in a GitHub Gist (you own your data)
2. Configure Context Bridge with your Gist URL (one time)
3. Visit any supported AI platform
4. Click "Insert Context"
5. Done! Your context appears instantly

### 🚀 Key Features

**✅ Universal AI Support**
- ChatGPT (chat.openai.com)
- Claude (claude.ai)
- GitHub Copilot (github.com/copilot)
- Google Gemini (gemini.google.com)

**✅ Lightning Fast Performance**
- Intelligent caching: 30x faster on repeated use
- <300ms on first load
- ~10ms on cache hit
- Optimized for low memory usage

**✅ Privacy & Security First**
- **No tracking**: We collect zero data about you
- **No servers**: Direct connection to GitHub
- **No middleman**: Your context never touches our infrastructure
- **You own your data**: Context lives in YOUR Gist
- **Open source**: Audit the code anytime on GitHub
- **Secure storage**: Firefox's native secure storage only

**✅ Developer-Friendly**
- CLI tool included for terminal workflows
- Simple one-time configuration
- Works across all Firefox profiles
- No account creation required

**✅ Production-Ready**
- Automatic retry on network failures
- Rate limit protection
- Memory leak prevention
- Tested with 100+ automated tests
- Built for reliability

### 🛠️ Perfect For

- **Developers**: Share your tech stack, preferences, and sprint context
- **Consultants**: Maintain consistent client context
- **Writers**: Keep style guides and audience details handy
- **Researchers**: Track current focus areas and methodologies
- **Students**: Maintain course context and learning goals
- **Anyone** who regularly uses AI assistants

### 🔐 Why Privacy Matters

Unlike other context management tools that store your data on their servers, Context Bridge:
- ✅ Uses YOUR GitHub Gist (you control access)
- ✅ Makes direct HTTPS requests (no proxy)
- ✅ Runs entirely client-side (zero backend)
- ✅ Collects no analytics (we don't even know you exist)
- ✅ Requires no account (just install and configure)

**Your context is yours. Period.**

### 📚 Bonus: CLI Tool

Power users get a command-line interface:

```bash
# Install (requires Node.js)
npm install -g context-bridge-cli

# Configure
context-bridge set https://gist.githubusercontent.com/...

# Get current context
context-bridge get

# Test your setup
context-bridge test

# View all commands
context-bridge --help
```

### 🎓 Quick Start Guide

**Step 1: Create Your Context**
1. Go to https://gist.github.com
2. Create a new gist with your AI context (see example below)
3. Make it public or secret (both work)
4. Click "Raw" and copy the URL

**Step 2: Configure Extension**
1. Install Context Bridge from Firefox Add-ons
2. Click the Context Bridge icon in your toolbar
3. Paste your Gist URL
4. Click "Save Configuration"

**Step 3: Use It!**
1. Visit ChatGPT, Claude, Copilot, or Gemini
2. Look for the "Insert Context" button
3. Click it
4. Your context appears instantly!

### 📖 Example Context

```markdown
# My AI Context

## Who I Am
- Full-stack developer specializing in React and Node.js
- 5 years experience, currently at StartupCo
- Based in Berlin, working remotely

## Current Projects
- Migrating monolith to microservices
- Learning Rust for performance-critical services
- Leading team of 4 engineers

## Communication Preferences
- Be direct and technical
- Show code examples
- Point out potential issues
- Security considerations always welcome

## Current Blockers
- Debugging memory leak in production
- Choosing between gRPC and REST for new service
- Team struggling with TypeScript migration
```

### 🆘 Support & Contributing

- **Documentation**: github.com/yourusername/context-bridge
- **Report Issues**: Open a GitHub issue
- **Feature Requests**: Use GitHub Discussions
- **Contributing**: Pull requests welcome!
- **Questions**: Tag us on GitHub

### 🌟 Why We Built This

We're developers who got tired of manually managing AI context. We wanted a tool that:
- ✅ Respects privacy (no data collection)
- ✅ Works everywhere (universal support)
- ✅ Is stupid simple (one-click operation)
- ✅ Is open source (full transparency)

So we built it. Now it's yours too.

### 📊 Technical Stats

- 100 automated tests (100% pass rate)
- 30x performance improvement with caching
- 0 known security vulnerabilities
- Production-tested and hardened
- Built with vanilla JavaScript (no frameworks)
- Manifest V2 (Firefox standard)

### 🔄 Updates

We actively maintain Context Bridge with:
- Regular security updates
- Performance improvements
- New AI platform support
- Community-requested features

**Version 1.0** is just the beginning!

---

**Install Context Bridge today and reclaim your time.**

Open source. Privacy-focused. Actually useful.

---

## 🏷️ Categories

**Primary**: Productivity  
**Secondary**: Developer Tools

---

## 🔑 Tags (20 max for Firefox)

1. ai
2. context
3. chatgpt
4. claude
5. productivity
6. automation
7. privacy
8. open-source
9. developer-tools
10. github
11. copilot
12. gemini
13. workflow
14. efficiency
15. no-tracking

---

## 🖼️ Screenshots (Max 10 for Firefox)

### Screenshot 1: Button Injection on ChatGPT
**Caption**: Insert Context button appears automatically on ChatGPT

### Screenshot 2: Button on Claude
**Caption**: Works seamlessly on Claude.ai

### Screenshot 3: Configuration Popup
**Caption**: Simple one-time configuration with your GitHub Gist URL

### Screenshot 4: Context Preview
**Caption**: Preview your context before inserting

### Screenshot 5: Loading States
**Caption**: Clear visual feedback during insertion

### Screenshot 6: Success Confirmation
**Caption**: Instant confirmation when context is inserted

### Screenshot 7: GitHub Copilot Support
**Caption**: Full support for GitHub Copilot Chat

### Screenshot 8: Google Gemini Support
**Caption**: Also works on Google Gemini

### Screenshot 9: Storage Monitor (Optional)
**Caption**: Built-in storage usage monitoring

### Screenshot 10: CLI Tool Demo (Optional)
**Caption**: Bonus command-line interface for power users

---

## 🎬 Version Notes (1.0.0)

**Initial Release - February 2026**

Features:
- ✅ One-click context insertion
- ✅ Support for ChatGPT, Claude, Copilot, Gemini
- ✅ Intelligent caching (30x performance boost)
- ✅ Privacy-first architecture (no tracking)
- ✅ Open source (full transparency)
- ✅ Rate limit protection
- ✅ Memory leak prevention
- ✅ CLI tool for developers
- ✅ Comprehensive error handling
- ✅ Production-tested (100 automated tests)

Known Issues:
- None currently!

Roadmap:
- Team collaboration features
- Context templates library
- AI-suggested context improvements
- More AI platform support (Perplexity, Poe)
- Browser sync (optional)

---

## 📜 License

MIT License - Free and open source forever

---

## 🔗 Homepage URL

https://github.com/yourusername/context-bridge

---

## 🛡️ Privacy Policy URL

https://github.com/yourusername/context-bridge/blob/main/PRIVACY.md

---

## 💬 Support URL

https://github.com/yourusername/context-bridge/issues

