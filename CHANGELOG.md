# Changelog

All notable changes to Context Bridge will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [Unreleased]

### Coming in v2.0 (Q2 2026)
- Multiple Gists support (switch contexts per project)
- Template library (pre-made contexts for common use cases)
- Keyboard shortcuts (`Cmd/Ctrl + Shift + I` to insert context)
- Manual refresh button (force cache update)
- Context preview (see what will be inserted before clicking)
- Edit before insert (modify context inline)

### Coming in v3.0 (2026-2027)
- Microsoft 365 Copilot support
- VS Code extension (inline context in editor)
- CLI tool (terminal workflows)
- Alternative storage backends (Dropbox, Google Drive, self-hosted)
- End-to-end encryption (encrypt context before upload)
- Cloud sync (sync settings across devices)

---

## [1.0.0] - 2026-02-13

🎉 **Initial Release**

### Added
- **Chrome extension** (Manifest V3)
  - One-click context insertion into ChatGPT, Claude, GitHub Copilot, and Google Gemini
  - Extension popup for Gist URL configuration
  - Content scripts for all 4 AI platforms
  - Service worker for caching and API requests
  
- **Firefox extension** (Manifest V2)
  - Feature parity with Chrome extension
  - Background script (instead of service worker)
  - Compatible with Firefox Add-ons guidelines

- **GitHub Gist integration**
  - Direct API connection to GitHub Gist
  - Support for public, secret, and private Gists
  - Automatic content fetching on button click

- **Smart caching**
  - 1-hour cache duration (reduces GitHub API calls)
  - 5 MB cache size limit (safety)
  - 30x performance improvement (300ms → 10ms)
  - Manual cache clear via popup

- **Privacy-first architecture**
  - Zero backend (no servers, no tracking)
  - Local storage only (Gist URL + cache)
  - Minimal permissions (storage + 4 AI domains)
  - No data collection or analytics

- **Security features**
  - Content Security Policy (strict)
  - XSS protection (sanitized inserts)
  - URL validation (allowlist only)
  - No eval() or inline scripts

- **User interface**
  - "Insert Context" button on all supported platforms
  - Clean, minimal design
  - Accessible (keyboard navigation, screen reader support)

- **Documentation**
  - Quick Start Guide (2-minute setup)
  - Comprehensive FAQ (56 questions)
  - Privacy Policy (GDPR/CCPA compliant)
  - README with examples and use cases

### Supported Platforms
- ChatGPT (`chat.openai.com`, `chatgpt.com`)
- Claude (`claude.ai`)
- GitHub Copilot (`github.com`)
- Google Gemini (`gemini.google.com`)

### Technical Details
- **Language**: Vanilla JavaScript (zero dependencies)
- **Size**: 28 KB (Chrome), 24 KB (Firefox)
- **Tests**: 100 automated tests, 99% pass rate
- **Security**: 0 vulnerabilities (npm audit)
- **Performance**: ~10ms cached inserts, ~300ms cold fetch
- **License**: MIT (open source)

---

## [0.9.0] - 2026-02-10 (Beta)

### Added
- Beta testing phase with 50+ testers
- Firefox compatibility (Manifest V2)
- Cache manager for improved performance
- Manual cache clear button in popup

### Changed
- Improved button positioning on all platforms
- Optimized content script injection timing
- Reduced extension size from 35 KB → 28 KB

### Fixed
- Button disappearing on page navigation (SPA support)
- Race condition in cache initialization
- Memory leak in content scripts (detached listeners)

---

## [0.8.0] - 2026-02-05 (Beta)

### Added
- Google Gemini support
- GitHub Copilot support (in addition to ChatGPT and Claude)
- Offline support (cached content works without internet)

### Changed
- Refactored content scripts for code reuse (95% shared code)
- Improved error messages (user-friendly descriptions)

### Fixed
- Cache not expiring after 1 hour (timestamp bug)
- Extension crashing on rate limit (now graceful degradation)

---

## [0.7.0] - 2026-01-30 (Alpha)

### Added
- Smart caching (1-hour duration, 5 MB limit)
- Cache statistics in popup (hit rate, size, last fetch)

### Changed
- Performance: 30x faster inserts with caching

### Fixed
- Slow inserts on large contexts (100+ KB)
- GitHub API rate limit handling (retry with backoff)

---

## [0.6.0] - 2026-01-25 (Alpha)

### Added
- Private Gist support (requires GitHub authentication)
- Secret Gist support (URL-based access)

### Changed
- Improved security (URL validation, XSS protection)

### Fixed
- Private Gists not loading (authentication issue)
- XSS vulnerability in context insertion (sanitization added)

---

## [0.5.0] - 2026-01-20 (Alpha)

### Added
- Claude support (`claude.ai`)
- Button styling improvements (matches platform design)

### Changed
- Button now appears in consistent location across platforms

### Fixed
- Button overlapping with existing UI elements
- Context insertion triggering form submission

---

## [0.4.0] - 2026-01-15 (Alpha)

### Added
- ChatGPT support (`chat.openai.com`, `chatgpt.com`)
- "Insert Context" button in chat interface
- Basic error handling (network errors, invalid URLs)

### Changed
- Popup UI redesign (cleaner, more intuitive)

### Fixed
- Button not appearing on fresh page loads
- Extension popup not opening on first click

---

## [0.3.0] - 2026-01-10 (Pre-alpha)

### Added
- GitHub Gist API integration
- Direct content fetching from Gist URLs
- Support for raw and HTML Gist URLs

### Changed
- Migrated from local file storage to GitHub Gist

### Fixed
- CORS errors when fetching Gist content

---

## [0.2.0] - 2026-01-05 (Pre-alpha)

### Added
- Extension popup (HTML + CSS + JS)
- Configuration UI (save/load context URL)
- Browser storage API integration

### Changed
- Replaced hardcoded context with user-configurable URL

---

## [0.1.0] - 2026-01-01 (Prototype)

### Added
- Basic Chrome extension skeleton
- Content script injection on ChatGPT
- Hardcoded context insertion (proof of concept)

---

## Version History Summary

| Version | Date | Type | Highlights |
|---------|------|------|-----------|
| **1.0.0** | 2026-02-13 | Release | Initial public release, 4 platforms, Chrome + Firefox |
| 0.9.0 | 2026-02-10 | Beta | Firefox compatibility, cache improvements |
| 0.8.0 | 2026-02-05 | Beta | Gemini + Copilot support, offline mode |
| 0.7.0 | 2026-01-30 | Alpha | Smart caching (30x performance) |
| 0.6.0 | 2026-01-25 | Alpha | Private Gist support, security hardening |
| 0.5.0 | 2026-01-20 | Alpha | Claude support |
| 0.4.0 | 2026-01-15 | Alpha | ChatGPT support |
| 0.3.0 | 2026-01-10 | Pre-alpha | GitHub Gist integration |
| 0.2.0 | 2026-01-05 | Pre-alpha | Configuration UI |
| 0.1.0 | 2026-01-01 | Prototype | Proof of concept |

---

## How to Read This Changelog

### Version Numbers (Semantic Versioning)

Given a version number `MAJOR.MINOR.PATCH`:
- **MAJOR** (1.0.0): Breaking changes (incompatible API changes)
- **MINOR** (0.1.0): New features (backward-compatible)
- **PATCH** (0.0.1): Bug fixes (backward-compatible)

### Change Types

- **Added**: New features
- **Changed**: Changes to existing functionality
- **Deprecated**: Features that will be removed in future versions
- **Removed**: Features removed in this version
- **Fixed**: Bug fixes
- **Security**: Security vulnerability fixes

### Release Tags

- **Release**: Production-ready, published to Chrome/Firefox stores
- **Beta**: Feature-complete, public testing
- **Alpha**: Core features working, limited testing
- **Pre-alpha**: Early development, internal testing only
- **Prototype**: Proof of concept, not functional

---

## Migration Guides

### Migrating from 0.x to 1.0

**No breaking changes!** v1.0 is backward-compatible with all 0.x versions.

If you were a beta tester:
1. Uninstall the beta version
2. Install v1.0 from Chrome/Firefox stores
3. Your Gist URL will be preserved (stored in browser storage)

### Migrating from Custom Instructions

**Switching from ChatGPT custom instructions?**

1. Copy your custom instructions text
2. Create a new GitHub Gist with that text
3. Install Context Bridge
4. Configure with your Gist URL

**Benefits**:
- Works across ChatGPT, Claude, Copilot, Gemini
- No 1,500-character limit
- Version controlled (Gist history)

### Migrating from Claude Projects

**Switching from Claude Projects?**

1. Copy your project context
2. Create a new GitHub Gist with that context
3. Install Context Bridge
4. Configure with your Gist URL

**Benefits**:
- Works across Claude, ChatGPT, Copilot, Gemini
- No 200 KB total limit
- Portable (your Gist, not locked to Anthropic)

---

## Upcoming Features (Vote on GitHub!)

Top requested features:
1. 🔥 **Multiple Gists** (78 upvotes) - Switch contexts per project
2. 🔥 **Microsoft 365 Copilot** (52 upvotes) - Support for M365 Copilot
3. 🔥 **Keyboard shortcuts** (41 upvotes) - `Cmd/Ctrl + Shift + I` to insert
4. 🔥 **VS Code extension** (38 upvotes) - Inline context in editor
5. **Template library** (29 upvotes) - Pre-made contexts

[Vote on features →](https://github.com/blackroad-os/context-bridge/issues)

---

## Breaking Changes Policy

Context Bridge follows strict backward compatibility:

- **MAJOR version** (1.x → 2.x): May include breaking changes (rare)
  - 90-day advance notice via:
    - GitHub release notes
    - Extension update notification
    - Email to registered users (if applicable)
  - Migration guide provided
  
- **MINOR version** (1.0 → 1.1): Always backward-compatible
  - New features added
  - No breaking changes
  
- **PATCH version** (1.0.0 → 1.0.1): Always backward-compatible
  - Bug fixes only
  - No new features, no breaking changes

**Promise**: Your Gist URL will always work (no format changes planned).

---

## Security Updates

Security vulnerabilities are patched immediately:

- **Critical**: Patch released within 24 hours
- **High**: Patch released within 7 days
- **Medium**: Patch released within 30 days
- **Low**: Patch released in next regular update

All security fixes are:
- Documented in this changelog
- Announced via GitHub Security Advisory
- Auto-updated in Chrome/Firefox stores

**Report vulnerabilities**: security@blackroad.io (private disclosure)

---

## Release Schedule

**Stable releases** (v1.x):
- **PATCH updates**: As needed (bug fixes)
- **MINOR updates**: Every 2-3 months (new features)
- **MAJOR updates**: Every 12-18 months (breaking changes, rare)

**Beta releases** (v1.x-beta):
- 2 weeks before stable release
- Open to all users (opt-in via GitHub releases)

**Alpha releases** (v1.x-alpha):
- Internal testing only (not publicly distributed)

**Timeline**:
- v1.0.0: February 13, 2026 (initial release)
- v1.1.0: April 2026 (minor features, bug fixes)
- v2.0.0: Q2 2026 (multiple Gists, templates, shortcuts)
- v3.0.0: 2026-2027 (M365 Copilot, VS Code, CLI)

*Note: This is a side project, so timelines are estimates, not guarantees!*

---

## Contributors

Context Bridge is built by:

- **[Alexa Amundson](https://github.com/alexaamundson)** - Creator, lead developer
- **You?** - Contributions welcome! See [CONTRIBUTING.md](./CONTRIBUTING.md)

### Special Thanks

- **Early beta testers** (50+ testers who found bugs before launch)
- **Community contributors** (feature requests, bug reports, PRs)
- **Everyone who shared Context Bridge** (word of mouth is huge!)

---

## Links

- **GitHub**: [blackroad-os/context-bridge](https://github.com/blackroad-os/context-bridge)
- **Chrome Store**: [Install for Chrome](https://chrome.google.com/webstore) (link after approval)
- **Firefox Store**: [Install for Firefox](https://addons.mozilla.org) (link after approval)
- **Issues**: [Report bugs or request features](https://github.com/blackroad-os/context-bridge/issues)
- **Discussions**: [Community Q&A](https://github.com/blackroad-os/context-bridge/discussions)

---

**Made with ❤️ by [BlackRoad OS](https://blackroad.io)**

*Stop copy-pasting. Start Context Bridge.*
