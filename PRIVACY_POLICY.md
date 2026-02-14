# Privacy Policy

**Last Updated**: February 13, 2026  
**Effective Date**: February 13, 2026

## Overview

Context Bridge is a privacy-first browser extension that helps you share context with AI assistants. This privacy policy explains what data we collect, how we use it, and your rights.

**TL;DR**: We collect almost nothing. Your context stays between you and GitHub.

---

## What We Collect

### Data We DO Collect

1. **GitHub Gist URL** (stored locally in your browser)
   - **Why**: To fetch your context when you click the extension button
   - **Where**: Browser's local storage only (never leaves your device)
   - **How long**: Until you delete it or uninstall the extension

### Data We DON'T Collect

We explicitly **DO NOT** collect, store, or transmit:

- ❌ Your browsing history
- ❌ Your AI conversations
- ❌ Your GitHub credentials
- ❌ Your personal information
- ❌ Usage analytics or telemetry
- ❌ Error reports or crash data
- ❌ Cookies or tracking data
- ❌ IP addresses
- ❌ Any identifiable information

---

## How It Works

### The Architecture

```
Your Browser → GitHub Gist → Your Browser → AI Platform
```

1. You configure your GitHub Gist URL (once)
2. You click the extension button
3. Extension fetches context **directly** from your Gist
4. Extension inserts context into the AI chat
5. **Nothing touches our servers** (we don't have any!)

### No Backend, No Servers

Context Bridge is a **zero-backend extension**:

- No data passes through our infrastructure
- No third-party services involved
- No analytics providers
- No tracking pixels
- No external API calls (except to GitHub's public API)

This is **not** a data minimization strategy—it's our **core architecture**.

---

## Data Storage

### What's Stored Locally

Your browser stores:

1. **GitHub Gist URL** (you provided this)
2. **Cache** (optional, temporary):
   - Cached context content (max 5 MB)
   - Cache expiration timestamp
   - **Purpose**: Reduce GitHub API calls
   - **Cleared**: Automatically after 1 hour, or manually anytime

### Where It's Stored

- **Chrome**: `chrome.storage.local` API
- **Firefox**: `browser.storage.local` API
- **Location**: Your device only
- **Encryption**: Managed by your browser

### How to Delete It

**Option 1**: Extension popup → "Clear All Data" button

**Option 2**: Browser settings → Extensions → Context Bridge → "Remove"

**Option 3**: Browser console:
```javascript
// Chrome
chrome.storage.local.clear()

// Firefox
browser.storage.local.clear()
```

All data is **immediately and permanently deleted**. No recovery, no backups, no "soft delete."

---

## Third-Party Services

### GitHub API

- **What**: Extension fetches your Gist content from GitHub's public API
- **How**: Direct HTTPS request from your browser to `api.github.com`
- **Data shared**: Your Gist URL (which you control)
- **GitHub's policy**: See [GitHub Privacy Statement](https://docs.github.com/en/site-policy/privacy-policies/github-privacy-statement)

**Important**: If your Gist is public, anyone with the URL can read it. If it's private, only you can access it (GitHub authentication required).

### AI Platforms

Context Bridge interacts with:

- ChatGPT (OpenAI)
- Claude (Anthropic)
- GitHub Copilot (GitHub/OpenAI)
- Gemini (Google)

**What we do**: Insert text into the chat interface (same as if you typed it)

**What we don't do**: Send data to these platforms directly, track your usage, or access your conversations

**Their policies**:
- [OpenAI Privacy Policy](https://openai.com/policies/privacy-policy)
- [Anthropic Privacy Policy](https://www.anthropic.com/privacy)
- [GitHub Privacy Statement](https://docs.github.com/en/site-policy/privacy-policies/github-privacy-statement)
- [Google Privacy Policy](https://policies.google.com/privacy)

---

## Your Rights

### GDPR Rights (European Economic Area)

If you're in the EEA, you have the right to:

1. ✅ **Access**: See what data we store (it's just your Gist URL, stored locally)
2. ✅ **Rectification**: Edit your Gist URL in the extension popup
3. ✅ **Erasure**: Delete all data via "Clear All Data" button
4. ✅ **Data Portability**: Your Gist URL is already portable (it's yours!)
5. ✅ **Objection**: Uninstall the extension anytime
6. ✅ **Restriction**: Don't use the extension, and no data is collected

**Basis for processing**: Consent (by using the extension) + Legitimate Interest (providing the service)

### CCPA Rights (California)

If you're in California, you have the right to:

1. ✅ **Know**: We've disclosed everything above
2. ✅ **Delete**: Use "Clear All Data" or uninstall
3. ✅ **Opt-out of sale**: Not applicable (we don't sell data—we don't even collect it!)
4. ✅ **Non-discrimination**: Not applicable (extension is free, no paid tiers)

### UK GDPR & Other Jurisdictions

Similar rights apply under UK GDPR, Brazil's LGPD, and other privacy laws. Contact us if you have questions.

---

## Security

### How We Protect Your Data

1. **No transmission**: Data never leaves your device (except to GitHub, which you control)
2. **Browser security**: Relies on Chrome/Firefox security model
3. **HTTPS only**: All GitHub API requests use TLS 1.2+
4. **No external dependencies**: Zero third-party libraries = minimal attack surface
5. **Content Security Policy**: Strict CSP prevents unauthorized code execution
6. **Permissions**: Extension requests minimum necessary permissions:
   - `storage` (to save your Gist URL)
   - `activeTab` (to insert context into current page)
   - `host_permissions` (ChatGPT, Claude, Copilot, Gemini domains only)

### What We Can't Control

- **Your Gist security**: If you make your Gist public, anyone can read it
- **GitHub security**: GitHub's responsibility to secure their API
- **Browser security**: Chrome/Firefox security updates
- **AI platform security**: Each platform's data handling practices

**Recommendation**: Use a **private** GitHub Gist for sensitive context.

---

## Children's Privacy

Context Bridge is not directed at children under 13 (or 16 in the EEA). We don't knowingly collect data from children.

If you're a parent/guardian and believe your child provided data to us, contact us—though note that we don't store data server-side, so there's likely nothing to delete.

---

## Changes to This Policy

We may update this policy to reflect:

- New features (e.g., additional AI platforms)
- Legal requirements (e.g., new privacy laws)
- Security improvements

**How we notify you**:
1. Update the "Last Updated" date at the top
2. Post the new policy on our website
3. Display a one-time notification in the extension (for material changes)

**What stays the same**: Our core commitment to zero data collection.

---

## Open Source & Transparency

Context Bridge is **open source**:

- **Source code**: [GitHub Repository](https://github.com/blackroad-os/context-bridge) (replace with actual URL)
- **License**: MIT License
- **Audit**: Anyone can review the code and verify our privacy claims

**No hidden behavior**. What you see is what you get.

---

## Contact Us

Questions, concerns, or rights requests?

**Email**: privacy@blackroad.io  
**GitHub Issues**: [GitHub Issues](https://github.com/blackroad-os/context-bridge/issues) (replace with actual URL)  
**Response time**: Within 7 days

For GDPR/CCPA requests, include:
- Your Gist URL (optional, helps us assist)
- Description of your request
- Jurisdiction (e.g., "EU resident")

---

## Legal Entity

**Publisher**: BlackRoad OS, Inc.  
**Address**: [Your Address Here]  
**Jurisdiction**: [Your Jurisdiction]

---

## Commitment

We built Context Bridge because we were frustrated with AI context limits—and we value privacy as much as you do.

**Our promise**:
- No data collection beyond what's strictly necessary
- No monetization via data
- No third-party sharing
- Open source forever

If we ever change this approach, we'll give you 90 days' notice and an easy export/deletion path.

---

**Questions?** Read our [FAQ](./FAQ.md) or email privacy@blackroad.io.

**Ready to use Context Bridge?** See the [Quick Start Guide](./QUICKSTART.md).

---

*This privacy policy is written in plain English because legalese is user-hostile. If you need a lawyer-friendly version, contact us.*
