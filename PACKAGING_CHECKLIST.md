# 📦 Packaging Checklist

## ✅ What's Included in ZIPs

### Chrome Extension (`context-bridge-chrome.zip`)
```
manifest.json          # Manifest V3
popup/                 # Extension popup UI
  ├── popup.html
  ├── popup.js
  └── storage-monitor.js
content/               # Content scripts
  ├── chatgpt.js
  ├── claude.js
  ├── claude-with-cache.js
  ├── copilot.js
  ├── gemini.js
  └── cache-manager.js
background/            # Service worker
  ├── background.js
  └── request-queue.js
styles/                # Shared CSS
  └── content.css
icons/                 # Extension icons
  ├── icon.svg
  ├── icon16.png
  ├── icon32.png
  ├── icon48.png
  └── icon128.png
templates/             # Context templates
  ├── developer.md
  ├── consultant.md
  ├── writer.md
  ├── student.md
  ├── researcher.md
  └── minimal.md
```

### Firefox Extension (`context-bridge-firefox.zip`)
```
manifest.json          # Manifest V2 (Firefox version)
[... same structure as Chrome ...]
```

---

## ❌ What's Excluded

- `.git/` - Version control
- `node_modules/` - Dependencies (none needed)
- `.DS_Store` - macOS metadata
- `*.log` - Log files
- `*~` - Backup files
- `*.swp` - Vim swap files
- Documentation files (README, etc.)
- Test files
- Build scripts

---

## 📊 Expected File Sizes

- **Chrome ZIP**: ~50-100 KB (depending on icons)
- **Firefox ZIP**: ~50-100 KB (same size)

**Why so small?**
- Vanilla JavaScript (no frameworks)
- No dependencies
- No bundler needed
- Just source files + icons

---

## �� Validation Commands

### Check ZIP contents:
```bash
unzip -l build/context-bridge-chrome.zip
unzip -l build/context-bridge-firefox.zip
```

### Test ZIP integrity:
```bash
unzip -t build/context-bridge-chrome.zip
unzip -t build/context-bridge-firefox.zip
```

### Verify checksums:
```bash
cd build
shasum -c context-bridge-chrome.zip.sha256
shasum -c context-bridge-firefox.zip.sha256
```

### Count files:
```bash
unzip -l build/context-bridge-chrome.zip | grep -c "\.js$"
# Should show ~10 JS files
```

---

## 🚨 Pre-Upload Checklist

### Before uploading to Chrome Web Store:
- [ ] `manifest.json` is Manifest V3
- [ ] `manifest_version` is `3`
- [ ] Icons exist: 16, 32, 48, 128
- [ ] All content scripts listed in `manifest.json`
- [ ] Service worker (`background.js`) configured
- [ ] Version number is `1.0.0`
- [ ] No console.log statements (or all are debug-only)
- [ ] No test code included

### Before uploading to Firefox Add-ons:
- [ ] `manifest.json` is Manifest V2
- [ ] `manifest_version` is `2`
- [ ] Icons exist: 16, 32, 48, 128
- [ ] `browser_action` (not `action`) configured
- [ ] Background scripts (not service worker) configured
- [ ] Permissions include host permissions
- [ ] Version number is `1.0.0`
- [ ] No console.log statements

---

## 🔐 Security Validation

### Scan for common issues:
```bash
# Check for hardcoded secrets
grep -r "api_key\|password\|secret\|token" extension/
# Should return nothing sensitive

# Check for eval usage
grep -r "eval(" extension/
# Should return nothing

# Check for inline scripts
grep -r "javascript:" extension/
# Should return nothing
```

---

## 📝 Manifest Validation

### Chrome (V3):
```bash
cd extension
python3 -m json.tool manifest.json > /dev/null && echo "✅ Valid JSON" || echo "❌ Invalid JSON"
```

### Firefox (V2):
```bash
cd extension-firefox
python3 -m json.tool manifest.json > /dev/null && echo "✅ Valid JSON" || echo "❌ Invalid JSON"
```

---

## 🎯 Final Checks

### File permissions:
```bash
# All files should be readable
find extension -type f ! -perm -444
# Should return nothing
```

### Line endings (UNIX style):
```bash
# Check for Windows line endings
find extension -name "*.js" -o -name "*.json" -o -name "*.css" | xargs file | grep CRLF
# Should return nothing
```

### No debug code:
```bash
# Search for debug statements
grep -r "debugger\|console\.log\|console\.error" extension/
# Review results - remove debug code or mark as production-safe
```

---

## 🚀 Upload Instructions

### Chrome Web Store:
1. Go to: https://chrome.google.com/webstore/devconsole
2. Click "New Item"
3. Upload `build/context-bridge-chrome.zip`
4. Wait for automated checks
5. Fill in store listing (use `CHROME_WEB_STORE_LISTING.md`)
6. Submit for review

### Firefox Add-ons:
1. Go to: https://addons.mozilla.org/developers/addon/submit/
2. Upload `build/context-bridge-firefox.zip`
3. Wait for automated validation
4. Fill in listing (use `FIREFOX_ADDONS_LISTING.md`)
5. Submit for review

---

## 📊 Store Review Times

**Chrome Web Store**: ~1-3 days (sometimes hours)  
**Firefox Add-ons**: ~1-7 days (manual review)

**Pro tip**: Submit both simultaneously!

---

## 🔄 If Rejected

Common rejection reasons:
1. **Missing privacy policy** → Create one (Step 9)
2. **Permissions too broad** → Our permissions are minimal ✅
3. **Unsafe code patterns** → We've hardened everything ✅
4. **Missing icons** → Generate PNGs from SVG (Step 2)
5. **Poor description** → We have detailed copy ✅

---

## 💾 Backup Strategy

Keep these files safe:
- `build/context-bridge-chrome.zip` - Original submission
- `build/context-bridge-firefox.zip` - Original submission
- `*.sha256` - Checksums for verification
- Git commit hash of release version

**Tag the release in Git:**
```bash
git tag -a v1.0.0 -m "Initial release"
git push origin v1.0.0
```

