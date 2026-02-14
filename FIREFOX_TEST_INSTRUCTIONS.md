# 🦊 Testing Context Bridge in Firefox

## Good News!

Your extension should work in Firefox with minimal changes. Let's test it!

---

## Step 1: Load Extension in Firefox

### Open Firefox Debugging Page
1. Open Firefox
2. Navigate to: `about:debugging#/runtime/this-firefox`
3. Click "Load Temporary Add-on..."

### Select Extension
1. Navigate to: `/Users/alexa/context-bridge/extension`
2. Select **`manifest.json`** file
3. Extension should load

---

## Step 2: Configure Context URL

Same as Chrome:
1. Click the Context Bridge icon in toolbar
2. Paste a test GitHub Gist raw URL
3. Click "Save URL"

---

## Step 3: Test on ChatGPT

1. Go to: https://chatgpt.com
2. Look for purple "Insert Context" button
3. Click it - should insert context message
4. Open DevTools (F12) - check Console

---

## Quick Test Command

```bash
open -a Firefox "about:debugging#/runtime/this-firefox"
```

Then:
1. Click "Load Temporary Add-on..."
2. Select: `/Users/alexa/context-bridge/extension/manifest.json`

---

## Firefox vs Chrome Differences

### API Compatibility
Our extension uses:
- `chrome.runtime` ✅ Works in Firefox as `browser.runtime` (polyfilled)
- `chrome.storage` ✅ Works in Firefox
- Content scripts ✅ Works in Firefox
- Background service worker ⚠️ Firefox uses background scripts differently

### Potential Issues

1. **Service Worker (background.js)**
   - Chrome: Uses Manifest V3 service workers
   - Firefox: Still prefers Manifest V2 background scripts
   - **Solution**: Create Firefox-specific manifest

2. **Storage API**
   - Should work the same
   - `chrome.storage.sync` works in Firefox

3. **Content Scripts**
   - Should work identically
   - Same DOM manipulation

---

## Create Firefox Version (If Needed)

If you encounter issues, we can create a Firefox-specific version:

```bash
cd /Users/alexa/context-bridge

# Copy extension for Firefox version
cp -r extension extension-firefox

# Modify manifest for Firefox
cd extension-firefox
# Edit manifest.json to use Manifest V2
```

### Manifest V2 Changes Needed

```json
{
  "manifest_version": 2,
  "background": {
    "scripts": ["background/service-worker.js"]
  }
}
```

Instead of:
```json
{
  "manifest_version": 3,
  "background": {
    "service_worker": "background/service-worker.js"
  }
}
```

---

## Testing Checklist for Firefox

### Visual Tests
- [ ] Extension loads without errors
- [ ] Popup UI renders correctly
- [ ] Button appears on ChatGPT
- [ ] Button appears on Claude
- [ ] Styling looks correct

### Functional Tests
- [ ] Save URL works
- [ ] Button click inserts context
- [ ] Loading states work
- [ ] Success state appears
- [ ] Cache works (2nd click instant)

### Firefox-Specific
- [ ] No manifest errors
- [ ] No API compatibility warnings
- [ ] Storage sync works
- [ ] Content scripts inject properly

---

## Expected Compatibility

✅ **Should Work Out of the Box:**
- Content scripts (chatgpt.js, claude.js, etc.)
- Popup UI (popup.html, popup.js)
- Storage API
- Message passing

⚠️ **Might Need Adjustments:**
- Background service worker (Manifest V3 vs V2)
- Some Chrome-specific APIs

---

## Quick Firefox Test

1. **Load Extension:**
   ```bash
   open -a Firefox "about:debugging#/runtime/this-firefox"
   ```

2. **Click "Load Temporary Add-on"**

3. **Select:**
   ```
   /Users/alexa/context-bridge/extension/manifest.json
   ```

4. **Test on ChatGPT:**
   ```
   https://chatgpt.com
   ```

5. **Check Console (F12):**
   ```
   Should see: "Context Bridge: Loaded on ChatGPT"
   ```

---

## If It Works:

Great! Your extension is cross-browser compatible. You can publish to:
- ✅ Chrome Web Store
- ✅ Firefox Add-ons (addons.mozilla.org)

---

## If It Doesn't Work:

Check Console for errors:
- Manifest version issues → Create Firefox-specific manifest
- Service worker issues → Use background scripts instead
- API issues → Use `browser.*` instead of `chrome.*`

---

## Firefox Add-ons Submission

Once working in Firefox, you can submit to Firefox Add-ons:

1. Create account at addons.mozilla.org
2. Zip extension: `zip -r context-bridge-firefox.zip extension/`
3. Upload to Firefox Add-ons
4. Fill in listing details
5. Submit for review

**Review time**: Usually 2-5 days

---

## Alternative: Create Firefox-Specific Build

If needed, I can create a separate Firefox version with:
- Manifest V2 compatibility
- `browser.*` API usage
- Firefox-optimized background script

Just let me know if you hit any issues!

---

**Try loading it in Firefox now and see what happens!** 🦊

Most likely it will "just work" since we used standard APIs.
