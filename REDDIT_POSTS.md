# 📱 Reddit Launch Posts

**IMPORTANT**: Each subreddit has different rules about self-promotion. Always check the rules before posting!

---

## 1. /r/SideProject

**Title**: Built Context Bridge: One-click AI context insertion for ChatGPT/Claude/Copilot/Gemini

**Post**:

Hi /r/SideProject! I just launched my latest side project and wanted to share.

### What I Built

**Context Bridge** - A browser extension that solves a specific problem I had: copying the same context into ChatGPT/Claude/Copilot/Gemini dozens of times per day.

It adds an "Insert Context" button that pulls from your GitHub Gist. One click, context inserted.

### The Build

- **Time**: 5 sessions over a week (~15 hours)
- **Stack**: Vanilla JavaScript (no frameworks)
- **Tests**: 100 automated tests
- **Size**: 24KB total
- **Platforms**: Chrome & Firefox

### Key Decisions

**Why vanilla JS?** Faster, smaller, no build process needed.

**Why GitHub Gists?** Users own their data. No servers for me to maintain. Privacy by architecture.

**Why both browsers?** 95% code reuse, just different manifests.

### What I Learned

1. Most browser extensions don't need frameworks
2. Intelligent caching = 30x performance improvement
3. Privacy-first architecture eliminates whole categories of risk
4. 100 tests caught 24 bugs before launch

### Available Now

- Chrome Web Store: [link]
- Firefox Add-ons: [link]  
- GitHub: github.com/yourusername/context-bridge

Free, open source (MIT license).

### Looking for Feedback

- Is this a pain point for others?
- What features would make this more useful?
- Would you use this?

Happy to answer questions about the build process!

---

**Subreddit Rules Compliance**:
- ✅ Descriptive title
- ✅ Build details included
- ✅ Asking for feedback (not just promoting)
- ✅ Open to discussion

---

## 2. /r/programming

**Title**: Context Bridge: Privacy-first AI context management with zero dependencies

**Post**:

Built a browser extension for managing AI assistant context without frameworks, bundlers, or backend infrastructure.

### The Problem

Using AI assistants (ChatGPT, Claude, Copilot, Gemini) requires context. Most tools store this on their servers. I wanted user-owned data.

### The Architecture

**Client-only design**:
- Vanilla JavaScript (no React/Vue/etc.)
- Direct GitHub Gist API calls (no proxy)
- Chrome storage API (no external database)
- Zero backend infrastructure

**Why no framework?**
- Extension needs ~5KB of logic
- React bundle alone is 100KB+
- Faster load, smaller size, simpler debugging

**Cross-browser strategy**:
- Single codebase
- Dual manifests (V3/V2)
- 95% code reuse
- Shared content scripts

### Performance

**Intelligent caching**:
- In-memory with 5-min TTL
- 30x improvement (10ms vs 300ms)
- 95% API call reduction

**Memory management**:
- Cleanup on unload
- Disconnect observers
- Clear listeners
- Stable 30MB footprint

### Security

**Hardening applied**:
- URL parsing (not regex matching)
- HTML escaping (XSS prevention)
- Template safety (string split/join)
- No eval() or dynamic execution

**Testing**:
- 100 automated tests
- 66 edge case scenarios
- 0 vulnerabilities found

### Stats

- Development: 15 hours
- Code: ~1,500 lines JS
- Package: 24KB zipped
- Dependencies: 0
- License: MIT

### Source

GitHub: github.com/yourusername/context-bridge

Feedback welcome, especially on architecture decisions.

---

**Subreddit Rules Compliance**:
- ✅ Technical focus
- ✅ Architecture details
- ✅ No marketing language
- ✅ Discussion-worthy content

---

## 3. /r/ChatGPT

**Title**: Made an extension to stop copy-pasting context into every ChatGPT conversation

**Post**:

Does anyone else get tired of copying their context into every new ChatGPT chat?

I built a simple extension that solves this: **Context Bridge**

### How it works

1. Put your context in a GitHub Gist (one time)
2. Install the extension
3. An "Insert Context" button appears on ChatGPT
4. Click it, your context is inserted

That's it.

### What context?

Mine includes:
- My role and expertise
- Current projects
- How I like responses (direct, technical, no fluff)
- Constraints and blockers

Basically anything ChatGPT needs to give me better responses.

### Why GitHub Gist?

- You own your data (not stored on my servers)
- Free
- Private or public (your choice)
- Easy to edit

### Also works on

- Claude
- GitHub Copilot
- Google Gemini

Same button, same experience everywhere.

### Free and open source

Chrome: [link]
Firefox: [link]
GitHub: github.com/yourusername/context-bridge

No tracking, no account needed, no BS.

### Question for y'all

What context do you typically include? Curious what others are sharing with ChatGPT.

---

**Subreddit Rules Compliance**:
- ✅ Conversational tone
- ✅ Asks community question
- ✅ Solves common pain point
- ✅ Not overly promotional

---

## 4. /r/ClaudeAI

**Title**: Built a tool for persistent context across Claude conversations

**Post**:

Claude is amazing for long-form thinking, but I kept losing context between conversations.

So I built **Context Bridge** - adds an "Insert Context" button to Claude (and ChatGPT, Copilot, Gemini).

### My Claude workflow

I use Claude for:
- Writing (articles, documentation)
- Research (synthesizing information)
- Problem-solving (thinking through complex issues)

But each new conversation meant re-explaining my preferences, constraints, and current focus.

### How Context Bridge helps

Your context lives in a GitHub Gist. When you start a new Claude conversation, click the button and your full context appears.

For me, this includes:
- Writing style preferences
- Current research areas  
- Communication constraints
- Preferred response format

### Privacy-focused

Unlike tools that store context on their servers:
- Your context stays in YOUR Gist
- Direct connection (no middleman)
- No tracking or analytics
- Open source (MIT license)

### Cross-platform

Works identically on:
- Claude.ai ✓
- ChatGPT ✓
- GitHub Copilot ✓
- Google Gemini ✓

### Available now

Chrome: [link]
Firefox: [link]
Source: github.com/yourusername/context-bridge

Free and open source.

### For Claude power users

What context helps you get the most out of Claude? Always looking to improve.

---

**Subreddit Rules Compliance**:
- ✅ Claude-specific framing
- ✅ Genuine use case
- ✅ Asks community question
- ✅ Value-first approach

---

## 5. /r/opensource

**Title**: Context Bridge: MIT-licensed AI context management (vanilla JS, zero deps, privacy-first)

**Post**:

Released a browser extension for managing AI assistant context. Fully open source, MIT licensed.

### Project: Context Bridge

**Purpose**: One-click context insertion across ChatGPT, Claude, Copilot, and Gemini.

**Source**: github.com/yourusername/context-bridge

### Open Source Approach

**Tech choices**:
- Vanilla JavaScript (no framework lock-in)
- Zero dependencies (no supply chain risk)
- No backend (privacy by architecture)
- Dual browser support (Chrome & Firefox)

**Why MIT?**
- Maximum freedom
- Commercial use allowed
- Fork-friendly
- No copyleft restrictions

### Architecture Highlights

**Client-only design**:
- Direct GitHub Gist API integration
- No servers or databases
- No data collection
- Full transparency

**Testing**:
- 100 automated tests
- 66 edge case scenarios
- CI/CD ready
- Test coverage documented

**Security**:
- Input validation
- XSS prevention
- No eval() or dynamic execution
- URL parsing (not regex matching)

### Development Stats

- **Time**: 15 hours over 5 sessions
- **Code**: ~1,500 lines JavaScript
- **Size**: 24KB packaged
- **Tests**: 100% pass rate
- **Vulnerabilities**: 0 found

### Looking For

- Code review (especially security)
- Feature suggestions
- Bug reports
- Contributors
- Forks for other platforms

### Installation

- Chrome Web Store: [link]
- Firefox Add-ons: [link]
- Build from source: See GitHub README

### Contributing

PRs welcome. See CONTRIBUTING.md for guidelines.

Issues for bugs and feature requests.

### License

MIT - Do whatever you want with it.

---

**Subreddit Rules Compliance**:
- ✅ Emphasizes open source values
- ✅ Includes technical details
- ✅ Welcomes contributions
- ✅ License clearly stated

---

## 6. /r/privacy

**Title**: Built a privacy-first alternative to AI context management tools that store your data

**Post**:

Most AI context managers store your data on their servers. I built one that doesn't.

### Context Bridge: Privacy by Design

**Your data stays yours**:
- Context lives in YOUR GitHub Gist
- Direct HTTPS connection (no proxy)
- No servers (no data to leak)
- No tracking or analytics
- No account required

### Why This Matters

AI context often includes:
- Work preferences and expertise
- Current projects and goals
- Communication style
- Sensitive constraints

That's your intellectual property. It shouldn't live on someone else's server.

### How It Works

1. Create a GitHub Gist (private or public, your choice)
2. Install the extension (Chrome or Firefox)
3. Configure once with your Gist URL
4. Click "Insert Context" on ChatGPT/Claude/Copilot/Gemini

Your context never touches our infrastructure. Because we have no infrastructure.

### Privacy Features

**Zero data collection**:
- No analytics
- No tracking pixels
- No telemetry
- No crash reports

**Client-side only**:
- All processing in browser
- No API calls to our servers
- Direct GitHub API only

**Open source**:
- Full code transparency
- Audit anytime
- MIT license
- Self-hostable (it's just client code)

**No account**:
- No email required
- No password
- No PII collected
- Anonymous by default

### Threat Model

**What we protect against**:
- ✅ Server breaches (no servers)
- ✅ Data leaks (no data stored)
- ✅ Third-party tracking (no analytics)
- ✅ Supply chain attacks (zero dependencies)

**What we don't protect against**:
- GitHub Gist access (you control this)
- Browser extension permissions (standard Chrome/Firefox)
- Local device compromise (same as any extension)

### Compliance

- GDPR compliant (no personal data processed)
- CCPA compliant (no selling of data)
- No cookies
- No persistent identifiers

### Open Source

Full source: github.com/yourusername/context-bridge

MIT license. Fork it, audit it, verify it.

### Alternatives Comparison

| Feature | Context Bridge | Typical SaaS |
|---------|---------------|--------------|
| Data storage | Your Gist | Their servers |
| Account required | No | Yes |
| Tracking | None | Usually yes |
| Open source | Yes | Rarely |
| Backend | None | Always |

### Available Now

Chrome: [link]
Firefox: [link]

Free. No strings attached.

### Discussion

What privacy features matter most to you in AI tools?

---

**Subreddit Rules Compliance**:
- ✅ Privacy-focused framing
- ✅ Threat model included
- ✅ Transparent about limitations
- ✅ Compliance details provided

---

## 7. /r/productivity

**Title**: Stopped wasting 30+ minutes/week copying AI context - built a one-click solution

**Post**:

**The Problem**: Every ChatGPT/Claude conversation, I was copying the same context. My expertise, current projects, preferences, constraints.

Takes 30 seconds each time. 10-20 times per day. That's 30+ minutes per week on pure copy-paste.

### The Solution

Built **Context Bridge** - adds an "Insert Context" button to AI websites.

One click = context inserted. Problem solved.

### Works On

- ChatGPT
- Claude  
- GitHub Copilot
- Google Gemini

### Setup (5 minutes, one time)

1. Create GitHub Gist with your context
2. Install extension
3. Paste Gist URL
4. Done forever

### My Context Includes

- My role and expertise
- Current projects and goals
- Communication preferences (direct, concise)
- Constraints (time, resources)
- Recent wins and blockers

Basically: everything the AI needs to help me effectively.

### Time Savings

Before: 30+ min/week copying text
After: 0 minutes (just clicks)

That's 26 hours per year saved.

### Privacy Bonus

Your context lives in YOUR GitHub Gist. Not on my servers (I have no servers). You own your data.

### Free and Simple

Chrome: [link]
Firefox: [link]

No account needed. No tracking. Open source.

### Question

What do you include in your AI context? Curious what helps others most.

---

**Subreddit Rules Compliance**:
- ✅ Productivity-focused framing
- ✅ Time savings quantified
- ✅ Simple value prop
- ✅ Asks community question

---

## 8. /r/selfhosted

**Title**: Context Bridge: Self-hosted AI context management (your Gist, no backend, open source)

**Post**:

Built an AI context manager with no backend infrastructure. It's fully "self-hosted" in the sense that your data lives in your GitHub Gist and the extension runs entirely client-side.

### What It Does

Adds "Insert Context" button to ChatGPT, Claude, Copilot, and Gemini. Click it, your context (from your GitHub Gist) gets inserted.

### Why /r/selfhosted Will Like This

**No backend required**:
- Zero servers
- Zero databases  
- Zero infrastructure
- Zero maintenance

**Your data, your control**:
- Context lives in YOUR GitHub Gist
- Private or public (your choice)
- Edit with any text editor
- Version controlled (Git)
- Backup-friendly

**Client-side architecture**:
- All logic runs in browser
- Direct GitHub API calls
- No proxy or middleman
- Works offline (with cached context)

**Open source**:
- Full source on GitHub
- MIT license
- Self-auditable
- Fork-friendly
- Zero dependencies

### Tech Stack

- **Frontend**: Vanilla JavaScript
- **Storage**: GitHub Gists (your account)
- **Backend**: None
- **Database**: None
- **Dependencies**: 0

### Self-Hosting Options

**Option 1: Use GitHub Gists** (recommended)
- Free tier: unlimited public, secret gists
- Already backed up
- Version controlled
- API included

**Option 2: Self-hosted Git**
- Gitea, GitLab, etc.
- Fork the code
- Point to your Git server
- Same privacy model

**Option 3: Local file**
- Context from local file instead of Gist
- No internet dependency
- Simple file:// URL
- (Requires minor code change)

### Privacy Model

**Data flow**:
```
Browser → GitHub Gist → Browser
```

No external servers. No data collection. No tracking.

### Setup

1. Create GitHub Gist with your context
2. Install extension (Chrome/Firefox)
3. Configure Gist URL
4. Done

### Performance

- First load: <300ms
- Cached: ~10ms
- Memory: 30MB stable
- No network calls after cache hit

### Source Code

GitHub: github.com/yourusername/context-bridge

MIT license. Fork it, modify it, self-host it.

### Who It's For

- People who use AI assistants daily
- Privacy-conscious users
- Self-hosters who prefer client-side
- Anyone tired of copy-paste

### Available

Chrome: [link]
Firefox: [link]

Or build from source.

### Discussion

What would make this more self-host friendly? Looking for feedback.

---

**Subreddit Rules Compliance**:
- ✅ Self-hosting angle emphasized
- ✅ Technical architecture detailed
- ✅ No backend/infrastructure highlighted
- ✅ Open source and forkable

---

## Reddit Posting Strategy

### Timing

**Best days**: Tuesday, Wednesday, Thursday
**Best times**: 
- 8-10 AM EST (morning Reddit browsing)
- 2-4 PM EST (afternoon break)
- 8-10 PM EST (evening browsing)

**Avoid**: Friday afternoon, weekends (less traffic)

### Order of Posting

**Day 1**: Start with friendly communities
1. /r/SideProject (most welcoming to launches)
2. /r/productivity (broad audience)

**Day 2-3**: Technical communities
3. /r/ChatGPT (large, active)
4. /r/ClaudeAI (smaller, engaged)

**Day 4-5**: Niche communities
5. /r/opensource (values transparency)
6. /r/privacy (cares about architecture)
7. /r/selfhosted (technical, detail-oriented)

**Day 6-7**: Technical deep dive
8. /r/programming (save for last, highest bar)

### Engagement Strategy

**First hour**: Critical for Reddit algorithm
- Respond to all comments within 1 hour
- Upvote genuine questions
- Thank people for feedback

**First 24 hours**:
- Check every 2-3 hours
- Thoughtful responses (not generic)
- Address criticisms honestly
- Share updates in comments

**Ongoing**:
- Set up alerts for mentions
- Respond to late comments
- Share user feedback
- Post updates as replies

### What NOT to Do

❌ **Don't spam**: One post per subreddit, ever
❌ **Don't delete and repost**: Gets you banned
❌ **Don't vote manipulate**: No asking for upvotes
❌ **Don't cross-post immediately**: Looks spammy
❌ **Don't argue**: Stay humble, accept feedback
❌ **Don't ignore criticism**: Address it professionally

### Handling Criticism

**Common criticisms** (and how to respond):

**"Why not just use bookmarks?"**
- "Fair point! Bookmarks work for simple contexts. This is for dynamic context that changes frequently and needs quick updates across platforms."

**"This seems unnecessary"**
- "You might be right for some workflows! For me, copying context 20x/day was friction. Different strokes."

**"Privacy concerns with browser extension"**
- "Valid concern. That's why it's open source and client-only. No backend, no data collection. Source is on GitHub for audit."

**"Why GitHub? Not everyone has an account"**
- "True. GitHub Gist was chosen for zero-infrastructure. Open to PRs for other backends!"

### Success Metrics

**Good launch post**:
- 100+ upvotes
- 20+ comments
- 10+ genuine questions
- Mostly positive sentiment
- Few detailed criticisms (shows engagement)

**Great launch post**:
- 500+ upvotes
- 50+ comments  
- Featured in "rising" or "hot"
- Other users defending it
- Follow-up discussions

### If Post Doesn't Get Traction

**Don't**:
- Repost
- Delete and retry
- Get defensive
- Blame the subreddit

**Do**:
- Leave it up (searchable later)
- Engage with comments you got
- Learn from feedback
- Try different subreddit
- Adjust messaging for next one

### Red Flags (Getting Downvoted)

If your post immediately gets downvoted:
1. Check if you violated subreddit rules
2. Read other posts to match tone
3. Your title might be too promotional
4. Timing might be off (try different time)
5. Community might not be receptive to tools like this

**Don't take it personally.** Reddit can be fickle.

---

## Additional Subreddits to Consider

### After Initial Launch

- **/r/artificial** - AI discussion
- **/r/MachineLearning** - ML community (technical)
- **/r/webdev** - web developers
- **/r/javascript** - JS community (technical post)
- **/r/Firefox** - Firefox users
- **/r/chrome** - Chrome users
- **/r/degoogle** - privacy-focused
- **/r/FOSS** - free/open source
- **/r/linux** - Linux users (often privacy-conscious)
- **/r/devtools** - developer tools

### Timing for Additional Posts

Wait at least:
- 1 week between related subreddits
- 2 weeks before very similar communities
- 1 month before posting updates

---

## Post-Launch Updates

### Week 1 Update (If Initial Launch Goes Well)

**Title**: "Context Bridge update: 1 week, 1,000 users, 0 bugs"

**Post** (short):
> Thanks for the feedback last week! Quick update:
> 
> - 1,000+ installs
> - 100+ GitHub stars
> - 0 bugs reported (100 tests paying off!)
> 
> Top requested feature: Team collaboration. Coming in v2.
> 
> GitHub: [link]

Post this as a comment in your original thread, not a new post.

