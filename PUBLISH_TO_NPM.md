# 📦 Publishing Context Bridge CLI to npm

**Status**: Ready to publish  
**Package**: @context-bridge/cli@0.1.0  
**Date**: February 14, 2026

## ✅ Pre-flight Check

- ✅ Package name: `@context-bridge/cli`
- ✅ Version: 0.1.0
- ✅ Binary: `context` command
- ✅ Dependencies: All installed
- ✅ Entry point: bin/context.js
- ✅ README.md: Complete
- ✅ License: MIT

## 🚀 Step-by-Step Publishing

### Step 1: Login to npm (2 min)

```bash
cd /Users/alexa/context-bridge/cli
npm login
```

**You'll be prompted for:**
- Username: (your npm username)
- Password: (your npm password)
- Email: (your npm email)
- One-time password: (if 2FA enabled)

**Don't have an account?**
```bash
npm adduser
```

---

### Step 2: Final Pre-publish Check (1 min)

```bash
# Verify package.json is correct
cat package.json | grep -E "name|version|bin"

# Check what will be published
npm pack --dry-run
```

---

### Step 3: Publish! (1 min)

```bash
npm publish --access public
```

**Note**: Using `--access public` because scoped packages (@context-bridge) are private by default.

---

### Step 4: Verify It Worked (2 min)

```bash
# Check it's on npm
open https://npmjs.com/package/@context-bridge/cli

# Or search
npm search @context-bridge/cli

# Test global install (in new terminal)
npm install -g @context-bridge/cli
context --version
```

---

## 🎯 Expected Output

### On Success:
```
+ @context-bridge/cli@0.1.0
```

### On npm Registry:
- Package page: https://npmjs.com/package/@context-bridge/cli
- Download stats tracking begins
- Global installation available immediately

---

## 🐛 Troubleshooting

### "need auth This command requires you to be logged in"
**Solution**: Run `npm login` first

### "You do not have permission to publish"
**Solution**: 
1. Check package name isn't taken: `npm view @context-bridge/cli`
2. Ensure you're logged in: `npm whoami`
3. Try: `npm login` again

### "Payment information required"
**Solution**: Some npm operations require a verified account
1. Go to https://npmjs.com/settings/billing
2. Add payment method (not charged for free packages)

### "name can only contain URL-friendly characters"
**Solution**: Package name looks good, should work fine

---

## 📊 After Publishing

### Install Instructions for Users:
```bash
# Global install
npm install -g @context-bridge/cli

# Usage
context init developer
context validate
context publish
```

### Monitor Your Package:
- Downloads: https://npmjs.com/package/@context-bridge/cli
- Weekly downloads widget
- Version history
- Dependent packages

---

## 🎉 Success Checklist

- [ ] Run `npm login` successfully
- [ ] Run `npm publish --access public`
- [ ] See success message: `+ @context-bridge/cli@0.1.0`
- [ ] Verify at: https://npmjs.com/package/@context-bridge/cli
- [ ] Test install: `npm install -g @context-bridge/cli`
- [ ] Test command: `context --version`
- [ ] Update CURRENT_CONTEXT.md ✅

---

## 📝 What to Update After Publishing

1. **Landing page** (context-bridge.pages.dev):
   ```html
   <!-- Add install instructions -->
   <pre><code>npm install -g @context-bridge/cli</code></pre>
   ```

2. **README.md** (main repo):
   ```markdown
   ## Installation
   npm install -g @context-bridge/cli
   ```

3. **Announcements**:
   - Twitter: "CLI now on npm! `npm install -g @context-bridge/cli`"
   - LinkedIn: Add npm badge
   - Product Hunt: Update with npm link

---

## 🔗 Quick Commands

```bash
# Full publish flow
cd /Users/alexa/context-bridge/cli
npm login
npm publish --access public

# Verify
open https://npmjs.com/package/@context-bridge/cli
npm install -g @context-bridge/cli
context --version
```

---

**Ready? Let's ship it! 🚀**

Run: `cd /Users/alexa/context-bridge/cli && npm login`
