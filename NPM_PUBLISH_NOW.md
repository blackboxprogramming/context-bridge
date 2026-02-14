# 🚀 NPM Publishing - Step by Step

## Current Status
- ✅ Package ready: `@context-bridge/cli@0.1.0`
- ❌ Not logged into npm
- ⏱️ Time needed: 10 minutes

## Step 1: Login to NPM (2 min)

### Option A: If you have an npm account
```bash
cd /Users/alexa/context-bridge/cli
npm login
```

Enter:
- **Username**: Your npm username
- **Password**: Your npm password  
- **Email**: Your npm email
- **OTP**: (if 2FA enabled)

### Option B: Create new npm account
```bash
npm adduser
```

Or go to: https://www.npmjs.com/signup

---

## Step 2: Verify Login (30 sec)
```bash
npm whoami
# Should show your username
```

---

## Step 3: Verify Package (1 min)
```bash
cd /Users/alexa/context-bridge/cli
npm pack --dry-run
```

This shows what will be published (should see all necessary files).

---

## Step 4: Publish! (2 min)
```bash
npm publish --access public
```

**Note**: `--access public` is required for scoped packages (@context-bridge/cli)

---

## Step 5: Verify Publication (30 sec)
```bash
# Check it's live
npm view @context-bridge/cli

# Or visit:
# https://npmjs.com/package/@context-bridge/cli
```

---

## Step 6: Test Installation (2 min)
```bash
# In a different directory
npm install -g @context-bridge/cli

# Test it works
context --version
context --help
```

---

## Expected Output

After publishing, you should see:
```
+ @context-bridge/cli@0.1.0
```

Package will be available immediately at:
- https://npmjs.com/package/@context-bridge/cli
- `npm install -g @context-bridge/cli`

---

## Troubleshooting

### Error: "need to login"
```bash
npm login
```

### Error: "package already exists"
```bash
# Bump version in package.json
npm version patch  # 0.1.0 → 0.1.1
npm publish --access public
```

### Error: "402 Payment Required"
- You need to verify your email first
- Check spam folder for verification email
- Or go to: https://npmjs.com/settings/profile

---

## What This Enables

Once published, users can install with:
```bash
npm install -g @context-bridge/cli
```

Then use:
```bash
context init          # Create context file
context set URL       # Configure gist URL
context get           # View current context
context test          # Test connection
context help          # Show all commands
```

---

## After Publishing

Update these places with install command:
- [ ] Landing page (index.html)
- [ ] README.md  
- [ ] Launch announcements
- [ ] Documentation

Example:
```markdown
## Installation
\`\`\`bash
npm install -g @context-bridge/cli
\`\`\`
```

---

**Ready? Run these commands:**

```bash
cd /Users/alexa/context-bridge/cli
npm login              # Step 1
npm whoami            # Verify
npm publish --access public  # SHIP IT! 🚀
```
