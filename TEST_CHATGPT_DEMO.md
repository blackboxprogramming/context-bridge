# Testing Context Bridge on ChatGPT Demo

## Quick Test Plan

### 1. Load Extension in Chrome
```bash
# Open Chrome
open -a "Google Chrome"

# Navigate to: chrome://extensions/
# Enable "Developer mode" (top right)
# Click "Load unpacked"
# Select: /Users/alexa/context-bridge/extension
```

### 2. Configure Test Context
```bash
# Create a test gist with simple content
# For demo: https://gist.githubusercontent.com/[user]/[id]/raw/test.md

# Or use the extension popup:
# 1. Click extension icon
# 2. Paste gist URL
# 3. Click "Save URL"
```

### 3. Visit ChatGPT Demo
```
URL: https://chatgpt.com

Note: ChatGPT doesn't have a "demo" mode anymore - it requires sign-in.
You'll need to sign in to test.
```

### 4. Expected Behavior

**Button Injection:**
- Button should appear near the textarea input
- Button text: "Insert Context"
- Purple gradient styling
- SVG icon (document)

**Button Click:**
- Shows loading state (blue + spinner)
- Fetches context from gist
- Inserts message: "Read [URL] first, then help me with: "
- Cursor positioned after message
- Success state (green + checkmark, 2s)
- Returns to normal

**Cache Test:**
- Click button again within 5 minutes
- Should be instant (<10ms)
- No network request
- Same success behavior

### 5. What to Check

✅ **Visual:**
- [ ] Button appears correctly
- [ ] Styling looks professional
- [ ] Icon renders properly
- [ ] Button doesn't overlap other UI
- [ ] Button stays visible on scroll

✅ **Functionality:**
- [ ] First click fetches context (check Network tab)
- [ ] Context message inserted correctly
- [ ] Cursor positioned properly
- [ ] Can type immediately after
- [ ] Second click is cached (no network request)

✅ **States:**
- [ ] Loading state appears
- [ ] Spinner animates
- [ ] Success checkmark shows
- [ ] Error state works (try bad URL)
- [ ] Button disabled during operation

✅ **Performance:**
- [ ] No lag when button appears
- [ ] Insertion is instant
- [ ] No memory increase (check Task Manager)
- [ ] Page stays responsive

✅ **Edge Cases:**
- [ ] Works after navigation
- [ ] Works on new conversation
- [ ] Survives page refresh
- [ ] Multiple tabs work independently

### 6. Known Issues to Watch For

❌ **Potential Problems:**
1. Button doesn't appear → Check console for errors
2. Context not inserted → Check network tab for CORS
3. Button appears twice → SPA navigation bug
4. Memory leak → Check DevTools Memory profiler
5. Cache not working → Check cache TTL (5 min)

### 7. DevTools Checklist

**Console:**
```
Should see:
- "Context Bridge: Loaded on ChatGPT"
- "Context Bridge: Button injected on ChatGPT"
- No errors

Should NOT see:
- XSS warnings
- CORS errors
- Uncaught exceptions
```

**Network:**
```
First click:
- GET request to gist URL
- Status: 200
- Time: ~300ms

Second click (within 5 min):
- No network request (cached!)
```

**Memory:**
```
Initial: ~20-30MB
After 10 minutes: <50MB (stable)
After 100 clicks: <50MB (stable)
```

### 8. Quick Test Script

Open DevTools Console and run:

```javascript
// Check if extension loaded
console.log('Extension loaded:', !!document.querySelector('.context-bridge-button'));

// Check cache state
console.log('Cache available:', typeof cache !== 'undefined');

// Trigger manual insertion (for debugging)
// Find button and click programmatically
const button = document.querySelector('.context-bridge-button');
if (button) {
  console.log('Button found:', button);
  // button.click(); // Uncomment to test
} else {
  console.error('Button not found!');
}

// Check for duplicate buttons
const buttons = document.querySelectorAll('.context-bridge-button');
console.log('Button count:', buttons.length, '(should be 1)');

// Check memory usage
console.log('Memory:', performance.memory);
```

### 9. Alternative: Test on Claude.ai

If ChatGPT requires sign-in and you want to test immediately:

```
URL: https://claude.ai

Benefits:
- Same core functionality
- Better documented button placement
- contenteditable (more complex, better test)
```

### 10. Screenshot Checklist

For Chrome Web Store submission, capture:

1. **Extension popup** - URL configuration screen
2. **Button on page** - Showing purple gradient button
3. **Loading state** - Blue spinner animation
4. **Context inserted** - Message in textarea
5. **Success state** - Green checkmark

---

## Actual Test Results

### Environment
- Date/Time: 
- Chrome Version: 
- Extension Version: 1.0.0
- Test URL: 

### Results
- [ ] Button appeared: YES / NO
- [ ] Context inserted: YES / NO
- [ ] Cache worked: YES / NO
- [ ] No errors: YES / NO
- [ ] Performance good: YES / NO

### Issues Found
1. 
2. 
3. 

### Screenshots Taken
- [ ] Screenshot 1: 
- [ ] Screenshot 2: 
- [ ] Screenshot 3: 

### Notes


---

## Next Steps After Testing

✅ If all works:
- Take screenshots for Chrome Web Store
- Generate PNG icons
- Write store description
- Submit for review

❌ If issues found:
- Document issues in this file
- Fix critical bugs
- Re-test
- Then proceed with launch

---

**Expected Result**: Everything should work perfectly! We've tested the code thoroughly. This is just visual validation.
