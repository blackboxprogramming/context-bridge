# Store Submission Guide

Complete step-by-step instructions for submitting Context Bridge to Chrome Web Store and Firefox Add-ons.

---

## Prerequisites

Before you start, make sure you have:

- ✅ [Developer account](#create-developer-accounts) (Chrome and/or Firefox)
- ✅ Extension packages (`build/context-bridge-chrome.zip`, `build/context-bridge-firefox.zip`)
- ✅ Icon assets (PNG icons in 16, 32, 48, 128px - [generate if needed](#icon-generation))
- ✅ Screenshots (5-8 images, 1280x800 or 1920x1080)
- ✅ Privacy policy URL (host `PRIVACY_POLICY.md` on GitHub Pages or your website)
- ✅ Payment method (Chrome: $5 one-time fee, Firefox: free)

---

## Create Developer Accounts

### Chrome Web Store

1. **Go to**: [Chrome Web Store Developer Dashboard](https://chrome.google.com/webstore/devconsole)
2. **Sign in** with your Google account
3. **Accept** the Developer Agreement
4. **Pay** the one-time $5 registration fee
5. **Done!** You now have a Chrome Web Store developer account

**Time**: 5 minutes  
**Cost**: $5 USD (one-time, non-refundable)

### Firefox Add-ons (AMO)

1. **Go to**: [Firefox Add-ons Developer Hub](https://addons.mozilla.org/developers/)
2. **Sign in** or create a Firefox account
3. **Accept** the Developer Agreement
4. **Done!** You now have a Firefox Add-ons developer account

**Time**: 2 minutes  
**Cost**: Free

---

## Icon Generation

If you haven't generated PNG icons yet, do this first:

### Option 1: ImageMagick (Command Line)

```bash
cd /Users/alexa/context-bridge/extension/icons

# Install ImageMagick (if not already installed)
brew install imagemagick

# Generate all sizes
for size in 16 32 48 128; do
  convert icon.svg -resize ${size}x${size} icon${size}.png
done

# Verify
ls -lh icon*.png
```

### Option 2: Online Tool (No Installation)

1. Go to [CloudConvert](https://cloudconvert.com/svg-to-png)
2. Upload `extension/icons/icon.svg`
3. Set width/height to 128px
4. Download PNG
5. Repeat for 16px, 32px, 48px

### Option 3: Figma/Sketch (Designers)

1. Open `extension/icons/icon.svg` in Figma/Sketch
2. Export as PNG at 16px, 32px, 48px, 128px
3. Save to `extension/icons/`

**Required sizes**: 16, 32, 48, 128 (all square)

---

## Screenshot Preparation

### What to Capture

**5-8 screenshots** showing:
1. **Extension popup** (configured with Gist URL)
2. **ChatGPT with button** ("Insert Context" button visible)
3. **Claude with button** ("Insert Context" button visible)
4. **Context being inserted** (mid-action shot)
5. **Context inserted** (full context in chat)
6. **All 4 platforms** (ChatGPT, Claude, Copilot, Gemini logos)
7. **Before/After** (copy-paste vs. one-click comparison)
8. **Privacy diagram** (optional: "Your Browser → GitHub → AI")

### Screenshot Specs

**Chrome Web Store**:
- Size: 1280x800 or 640x400 (recommended)
- Format: PNG or JPG
- Max file size: 5 MB each
- Min: 1 screenshot, Max: 5 screenshots

**Firefox Add-ons**:
- Size: Any, but 1920x1080 or 1280x800 recommended
- Format: PNG or JPG
- Max file size: 10 MB each
- Max: 10 screenshots

### Tools

- **macOS**: Cmd+Shift+4 (select area), Cmd+Shift+5 (screen recording)
- **Windows**: Win+Shift+S (Snip & Sketch)
- **Linux**: Flameshot, GNOME Screenshot
- **Browser**: CloudApp, Loom, Awesome Screenshot

### Annotations (Optional)

Add arrows, highlights, text:
- Figma (free)
- Canva (free)
- Skitch (macOS, free)
- Paint.net (Windows, free)

---

## Chrome Web Store Submission

### Step 1: Upload Package

1. Go to [Chrome Web Store Developer Dashboard](https://chrome.google.com/webstore/devconsole)
2. Click **"New Item"**
3. Click **"Choose file"**
4. Select `build/context-bridge-chrome.zip`
5. Click **"Upload"**

**Wait**: 1-2 minutes for upload and initial validation

### Step 2: Store Listing

Fill in these fields (use `CHROME_WEB_STORE_LISTING.md` as reference):

#### Product Details

**Extension name**:
```
Context Bridge
```

**Summary** (132 chars max):
```
One-click AI context. Share context with ChatGPT, Claude, Copilot, and Gemini from your GitHub Gist.
```

**Description** (detailed, 16,000 chars max):
- Copy from `CHROME_WEB_STORE_LISTING.md`
- Includes: What is it, features, how it works, use cases, why it's better

**Category**:
```
Productivity
```

**Language**:
```
English (United States)
```

#### Graphic Assets

**Icon** (128x128):
- Upload `extension/icons/icon128.png`

**Small tile** (440x280, optional):
- Create a promotional tile with logo + tagline
- Or skip (Chrome will use icon)

**Screenshots** (1280x800):
- Upload 1-5 screenshots (prepared above)
- Add captions for each (optional but recommended)

**Promotional images** (optional):
- Small tile: 440x280
- Large tile: 920x680
- Marquee: 1400x560

**Promotional video** (optional):
- YouTube URL
- 30-90 seconds showing product in action

#### Privacy Practices

**Privacy policy URL**:
```
https://github.com/blackroad-os/context-bridge/blob/main/PRIVACY_POLICY.md
```
Or:
```
https://blackroad.io/privacy
```

**Single purpose description**:
```
Context Bridge allows users to insert pre-configured context from their GitHub Gist into AI chat interfaces with a single click, eliminating repetitive copy-pasting.
```

**Permission justifications**:

- **storage**: "To save the user's GitHub Gist URL locally for quick access."
- **activeTab**: "To insert context into the current AI chat page when the user clicks the button."

**Data usage**:
```
Context Bridge collects no user data. All context is stored in the user's GitHub Gist and fetched directly by the browser. No backend, no tracking, no data collection.
```

#### Distribution

**Visibility**:
- ✅ **Public** (visible to all users)
- Or **Unlisted** (only accessible via direct link - useful for beta testing)

**Regions**:
- ✅ **All regions** (unless you want to restrict)

**Pricing**:
- ✅ **Free**

### Step 3: Review Settings

**Test accounts** (optional):
- If your extension requires login, provide test credentials
- Context Bridge doesn't need this (works with any GitHub Gist)

**Notes for reviewers**:
```
To test Context Bridge:
1. Create a GitHub Gist at https://gist.github.com (free account)
2. Add any text content (e.g., "This is my test context")
3. Copy the Gist URL
4. Click the Context Bridge icon in Chrome
5. Paste the Gist URL and click "Save"
6. Go to https://chat.openai.com (or https://claude.ai)
7. Look for the "Insert Context" button (top right of chat input)
8. Click the button - context appears in the chat

Test Gist URL: [paste your test Gist URL here]

Extension is privacy-first: no backend, no data collection, no tracking. All context goes directly from GitHub → Browser → AI platform.
```

### Step 4: Submit for Review

1. Review all fields (double-check URLs, descriptions)
2. Click **"Submit for review"**
3. **Wait**: 1-7 days (usually 2-3 days)

**Email notification**: You'll receive an email when review is complete (approved or rejected)

---

## Firefox Add-ons Submission

### Step 1: Upload Package

1. Go to [Firefox Add-ons Developer Hub](https://addons.mozilla.org/developers/)
2. Click **"Submit a New Add-on"**
3. Click **"Upload Add-on"**
4. Select `build/context-bridge-firefox.zip`
5. Click **"Continue"**

**Wait**: 1-2 minutes for upload and validation

### Step 2: Add-on Details

#### Basic Information

**Name**:
```
Context Bridge
```

**Add-on URL** (slug):
```
context-bridge
```
(Results in: `https://addons.mozilla.org/firefox/addon/context-bridge`)

**Summary** (250 chars max):
```
One-click AI context insertion. Share context with ChatGPT, Claude, Copilot, and Gemini from your GitHub Gist. No copy-paste, no context limits, no vendor lock-in. Privacy-first, open source.
```

**Description** (full, no limit):
- Copy from `FIREFOX_ADDONS_LISTING.md`
- More detailed than Chrome (Firefox users appreciate technical depth)

**Homepage**:
```
https://github.com/blackroad-os/context-bridge
```

**Support email**:
```
support@blackroad.io
```

**Support website** (optional):
```
https://github.com/blackroad-os/context-bridge/discussions
```

**License**:
```
MIT License
```

**Privacy policy**:
```
https://github.com/blackroad-os/context-bridge/blob/main/PRIVACY_POLICY.md
```

#### Categories and Tags

**Categories** (select 2):
- ✅ **Productivity**
- ✅ **Developer Tools**

**Tags** (max 20, space-separated):
```
ai chatgpt claude copilot gemini context gist github productivity developer privacy open-source
```

#### Screenshots and Media

**Screenshots** (max 10):
- Upload 5-8 screenshots (prepared above)
- Firefox recommends 1920x1080 (but any size works)

**Icon** (64x64 or 128x128):
- Upload `extension-firefox/icons/icon128.png`

#### Version Notes

**Version number**:
```
1.0.0
```

**Release notes**:
```
Initial release!

Features:
- One-click context insertion into ChatGPT, Claude, GitHub Copilot, and Google Gemini
- GitHub Gist integration (use your existing Gists)
- Smart caching (30x faster after first use)
- Privacy-first (zero backend, no tracking)
- Open source (MIT License)

Supported platforms:
- ChatGPT (chat.openai.com, chatgpt.com)
- Claude (claude.ai)
- GitHub Copilot (github.com)
- Google Gemini (gemini.google.com)

Learn more: https://github.com/blackroad-os/context-bridge
```

### Step 3: Technical Details

**Does this add-on require any additional information or instructions?**
- ✅ No (Context Bridge is self-explanatory)

**Source code submission** (required for Firefox):
- Click **"Upload source code"**
- Upload `context-bridge-firefox-source.zip` (create this - see below)
- Or link to GitHub: `https://github.com/blackroad-os/context-bridge`

**Build instructions** (if source code differs from package):
```
No build process. Extension uses vanilla JavaScript with no dependencies.
Source code is identical to the uploaded package (no minification, no bundling).

To verify:
1. Unzip context-bridge-firefox.zip
2. Compare with GitHub source: https://github.com/blackroad-os/context-bridge
```

### Step 4: Submit for Review

1. Review all fields
2. Click **"Submit Version"**
3. **Wait**: 1-14 days (usually 3-5 days)

**Note**: Firefox reviews are more thorough than Chrome (manual code review).

---

## Source Code Package (Firefox Only)

Firefox requires source code submission if your package differs from source.

### Create Source ZIP

```bash
cd /Users/alexa/context-bridge

# Create source package
zip -r build/context-bridge-firefox-source.zip \
  extension-firefox/ \
  README.md \
  PRIVACY_POLICY.md \
  LICENSE \
  -x "*.DS_Store" "*.git*"

# Verify
unzip -l build/context-bridge-firefox-source.zip
```

**Or** just link to GitHub (easier):
```
https://github.com/blackroad-os/context-bridge
```

Firefox reviewers prefer GitHub links (they can see commit history).

---

## Review Process

### Chrome Web Store

**Timeline**: 1-7 days (average: 2-3 days)

**Review criteria**:
1. ✅ Follows Chrome Web Store policies
2. ✅ Permissions match functionality
3. ✅ No malicious code
4. ✅ No misleading claims
5. ✅ Privacy policy provided

**Common rejection reasons**:
- Overly broad permissions (Context Bridge only requests storage + activeTab ✅)
- Missing privacy policy (we have one ✅)
- Misleading description (ours is accurate ✅)
- Trademark issues (no trademarks used ✅)

**If approved**: Extension goes live immediately

**If rejected**: Email with reason + 30 days to fix and resubmit

### Firefox Add-ons

**Timeline**: 1-14 days (average: 3-5 days)

**Review types**:
- **Automated review** (minutes): Checks for common issues
- **Manual review** (days): Human reviewer examines code

**Review criteria**:
1. ✅ Follows AMO policies
2. ✅ Source code matches package
3. ✅ No obfuscated code
4. ✅ Permissions justified
5. ✅ Privacy policy provided

**Common rejection reasons**:
- Obfuscated/minified code (Context Bridge uses vanilla JS ✅)
- Missing source code (we provide it ✅)
- Undeclared permissions (all declared ✅)
- Remote code execution (we don't do this ✅)

**If approved**: Extension goes live on next review cycle (usually within hours)

**If rejected**: Email with detailed feedback + option to respond/fix

---

## After Approval

### Chrome Web Store

1. **Extension goes live** (immediately)
2. **Store URL**: `https://chrome.google.com/webstore/detail/YOUR_EXTENSION_ID`
3. **Update marketing materials** with store URL
4. **Monitor**: [Developer Dashboard](https://chrome.google.com/webstore/devconsole)

**Metrics available**:
- Installs (total, weekly, daily)
- Uninstalls
- User ratings and reviews
- Impressions (store page views)

### Firefox Add-ons

1. **Extension goes live** (within hours of approval)
2. **Store URL**: `https://addons.mozilla.org/firefox/addon/context-bridge`
3. **Update marketing materials** with store URL
4. **Monitor**: [Developer Hub Statistics](https://addons.mozilla.org/developers/)

**Metrics available**:
- Downloads (total, weekly, daily)
- Active users (daily, weekly)
- User ratings and reviews
- Update adoption rate

---

## Updating Your Extension

### Chrome Web Store

1. Update version in `extension/manifest.json` (e.g., 1.0.0 → 1.1.0)
2. Make your changes
3. Re-package: `bash package-for-submission.sh`
4. Go to [Developer Dashboard](https://chrome.google.com/webstore/devconsole)
5. Click on "Context Bridge"
6. Click **"Package"** → **"Upload new package"**
7. Upload new ZIP
8. Update release notes
9. Click **"Submit for review"**

**Review time**: Usually faster (1-2 days) for updates

**Auto-updates**: Users get the update automatically within 5 hours

### Firefox Add-ons

1. Update version in `extension-firefox/manifest.json`
2. Make your changes
3. Re-package: `bash package-for-submission.sh`
4. Go to [Developer Hub](https://addons.mozilla.org/developers/)
5. Click on "Context Bridge"
6. Click **"Upload New Version"**
7. Upload new ZIP
8. Update release notes
9. Submit source code (if changed)
10. Click **"Submit Version"**

**Review time**: 1-7 days (depends on changes)

**Auto-updates**: Users get the update automatically within 24 hours

---

## Troubleshooting

### "Package upload failed"

**Chrome**:
- Check manifest.json is valid JSON
- Ensure all files referenced in manifest exist
- Max package size: 20 MB (Context Bridge is 24 KB ✅)

**Firefox**:
- Check manifest.json is valid JSON
- Ensure manifest_version is 2 (not 3)
- Max package size: 200 MB (Context Bridge is 23 KB ✅)

### "Invalid manifest"

**Common issues**:
- Missing required fields (name, version, manifest_version)
- Invalid permissions syntax
- Incorrect file paths in content_scripts

**Fix**:
```bash
cd /Users/alexa/context-bridge
# Validate Chrome manifest
node -e "console.log(JSON.parse(require('fs').readFileSync('extension/manifest.json')))"

# Validate Firefox manifest
node -e "console.log(JSON.parse(require('fs').readFileSync('extension-firefox/manifest.json')))"
```

### "Privacy policy required"

**Chrome**: Privacy policy URL is required if extension handles user data

**Fix**: Add privacy policy URL in "Privacy Practices" section

**Context Bridge**: We have one! `https://github.com/blackroad-os/context-bridge/blob/main/PRIVACY_POLICY.md`

### "Permission justification needed"

**Chrome**: Must explain why each permission is needed

**Fix**: Add clear justifications:
- `storage`: "To save the user's GitHub Gist URL locally."
- `activeTab`: "To insert context into the current AI chat page."

### "Misleading description"

**Issue**: Description promises features that don't exist

**Fix**: Be accurate. Context Bridge description is tested and accurate.

### "Source code doesn't match package" (Firefox)

**Issue**: Uploaded package differs from source code

**Fix**: Context Bridge has no build process (vanilla JS), so they match. Explain this in build instructions.

---

## Best Practices

### Before Submitting

- ✅ Test extension thoroughly on all 4 platforms
- ✅ Clear, accurate description (no hype)
- ✅ All required fields filled
- ✅ Screenshots show actual product (no mockups)
- ✅ Privacy policy URL works
- ✅ Support email is monitored

### During Review

- ✅ Respond to reviewer questions within 24 hours
- ✅ Be respectful and professional
- ✅ Provide test credentials if needed
- ✅ Don't submit repeatedly (wait for review to complete)

### After Approval

- ✅ Monitor user reviews daily
- ✅ Respond to negative reviews (politely, helpfully)
- ✅ Fix critical bugs within 48 hours
- ✅ Update documentation as needed
- ✅ Thank early reviewers

---

## Rejection Appeal

### If Chrome Rejects

1. Read the rejection email carefully
2. Fix the issues mentioned
3. Re-submit (free, unlimited attempts)
4. If you disagree, use the appeal form (rare)

### If Firefox Rejects

1. Read the rejection email (very detailed)
2. Respond via the review system (ask questions!)
3. Fix issues and re-submit
4. Firefox reviewers are helpful - work with them

---

## Launch Checklist

After both extensions are approved:

- [ ] Update README.md with store URLs
- [ ] Update QUICKSTART.md with store URLs
- [ ] Update FAQ.md with store URLs
- [ ] Update all marketing materials with store URLs
- [ ] Add Chrome badge to README: `[![Chrome Web Store](https://img.shields.io/chrome-web-store/v/YOUR_ID)](URL)`
- [ ] Add Firefox badge to README: `[![Mozilla Add-on](https://img.shields.io/amo/v/context-bridge)](URL)`
- [ ] Tweet the store URLs
- [ ] Post on LinkedIn
- [ ] Submit to Product Hunt
- [ ] Post on Reddit (r/SideProject first)
- [ ] Celebrate! 🎉

---

## Support During Review

Need help? Contact:

- **Chrome**: [Chrome Web Store Support](https://support.google.com/chrome_webstore)
- **Firefox**: [AMO Developer Support](https://addons.mozilla.org/developers/support)
- **Community**: [GitHub Discussions](https://github.com/blackroad-os/context-bridge/discussions)

---

**Ready to submit? Follow this guide step-by-step, and you'll be live in a week! 🚀**
