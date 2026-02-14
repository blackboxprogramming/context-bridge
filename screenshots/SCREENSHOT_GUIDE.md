# 📸 Screenshots Guide - Context Bridge Launch

**Date**: February 14, 2026  
**Purpose**: Capture professional screenshots for Chrome Web Store, Firefox Addons, and Product Hunt  
**Time Needed**: 15 minutes

---

## 🎯 Required Screenshots (5 total)

### Screenshot 1: Extension Button on AI Platform ⭐ HERO SHOT
**Where**: Claude.ai, ChatGPT, or Copilot  
**What to Show**: The "Insert Context" button visible in the chat interface  
**Size**: 1280x800 (Chrome requirement)  
**Filename**: `01-button-on-platform.png`

**How to Capture**:
1. Load extension in Chrome (chrome://extensions → Load unpacked)
2. Visit https://claude.ai or https://chatgpt.com
3. Click in the chat textarea (button should appear)
4. Take screenshot showing:
   - The AI platform interface
   - The "Insert Context" button clearly visible
   - Clean, professional browser chrome
5. Crop to 1280x800 or 640x400

**Pro Tips**:
- Use a fresh conversation (no clutter)
- Show the gradient button effect
- Ensure button is centered/visible
- Hide browser bookmarks bar (Cmd+Shift+B)

---

### Screenshot 2: Context Insertion in Action ⭐ KEY FEATURE
**Where**: Any AI platform after clicking button  
**What to Show**: Context text being inserted into chat  
**Size**: 1280x800  
**Filename**: `02-context-inserted.png`

**How to Capture**:
1. Configure extension with test Gist URL
2. Click "Insert Context" button
3. Capture the moment context appears in textarea
4. Show the full context text visible

**What Makes This Great**:
- Shows the core value proposition
- User sees exactly what happens
- Proves it works

---

### Screenshot 3: Extension Popup Configuration ⭐ SETUP
**Where**: Extension popup (click extension icon)  
**What to Show**: The configuration interface  
**Size**: 800x600 (popup size)  
**Filename**: `03-extension-popup.png`

**How to Capture**:
1. Click Context Bridge extension icon in toolbar
2. Show the popup with:
   - GitHub Gist URL field
   - Save button
   - Clear/simple UI
3. Take screenshot of entire popup

**Optional**: Show filled-in configuration (with example URL)

---

### Screenshot 4: CLI in Terminal ⭐ POWER USERS
**Where**: Terminal/iTerm  
**What to Show**: CLI commands in action  
**Size**: 1200x800  
**Filename**: `04-cli-terminal.png`

**How to Capture**:
1. Open terminal with nice theme (dark mode recommended)
2. Run these commands:
   ```bash
   context init developer
   context view
   context validate
   ```
3. Show colorful output (CLI uses chalk for colors)
4. Screenshot showing all three commands + output

**Pro Tips**:
- Use a clean terminal theme (oh-my-zsh, Starship)
- Show successful output (green checkmarks)
- Increase font size for readability
- Use full-width terminal window

---

### Screenshot 5: Landing Page Hero ⭐ BRANDING
**Where**: https://context-bridge.pages.dev  
**What to Show**: Hero section of landing page  
**Size**: 1280x800  
**Filename**: `05-landing-page.png`

**How to Capture**:
1. Visit landing page
2. Scroll to show hero section
3. Take full-width screenshot
4. Show:
   - Title/tagline
   - Key benefits
   - Call-to-action buttons
   - Clean, professional design

---

## 🛠️ Tools & Techniques

### macOS Built-in (Recommended)
```bash
# Full screenshot
Cmd + Shift + 3

# Selection screenshot
Cmd + Shift + 4

# Window screenshot
Cmd + Shift + 4, then Space

# Screenshot with options
Cmd + Shift + 5
```

### Browser DevTools Method
1. Open DevTools (Cmd+Option+I)
2. Cmd+Shift+P → "Capture screenshot"
3. Choose "Capture full size screenshot"

---

## 📐 Size Requirements

### Chrome Web Store
- **Required**: 1280x800 or 640x400
- **Format**: PNG or JPEG
- **Max Size**: 500KB per image
- **Quantity**: 1-5 screenshots

### Firefox Addons
- **Required**: 1280x800
- **Format**: PNG
- **Max Size**: 5MB per image
- **Quantity**: 1-10 screenshots

### Product Hunt
- **Gallery Images**: Various sizes
- **Format**: PNG, JPEG, or GIF
- **Recommended**: 1200x630
- **Quantity**: 3-8 images

---

## 🚀 Quick Capture Workflow (5 minutes)

```bash
# 1. Create directory
cd ~/context-bridge/screenshots

# 2. Load extension
# Open chrome://extensions
# Load unpacked: /Users/alexa/context-bridge/extension

# 3. Capture with Cmd+Shift+4:
# - Visit claude.ai → show button → screenshot
# - Click button → context inserted → screenshot
# - Click extension icon → popup → screenshot
# - Open terminal → run commands → screenshot
# - Visit landing page → hero → screenshot

# 4. Verify
ls -lh *.png  # Check file sizes
open .        # Review all screenshots
```

---

## ✅ Quality Checklist

Before finalizing:
- [ ] Correct dimensions (1280x800)
- [ ] PNG format
- [ ] File size under 500KB
- [ ] No personal information
- [ ] Text is readable
- [ ] Professional appearance
- [ ] Context Bridge branding visible

---

**Ready to capture? Use Cmd+Shift+4 and follow the workflow above!** 📸
