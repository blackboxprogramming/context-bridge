# 💳 Stripe Live Mode - Quick Setup

## Current Status
- ✅ Test mode configured and working
- ❌ Need to switch to Live mode
- ⏱️ Time needed: 5 minutes

---

## Step 1: Access Stripe Dashboard (30 sec)

Go to: **https://dashboard.stripe.com**

Look for toggle in top-right:
- Currently shows: **🧪 Test Mode**
- Click to switch: **✅ Live Mode**

---

## Step 2: Create Live Products (2 min)

### Product 1: Monthly Subscription
1. Go to: **Products** → **Add Product**
2. Fill in:
   - **Name**: Context Bridge Monthly
   - **Description**: Monthly subscription to Context Bridge
   - **Price**: $10.00 USD
   - **Billing**: Recurring, monthly
3. Click **Save Product**
4. Click **Create payment link**
5. Copy the payment link (starts with `https://buy.stripe.com/...`)

### Product 2: Annual Subscription  
1. **Products** → **Add Product**
2. Fill in:
   - **Name**: Context Bridge Annual
   - **Description**: Annual subscription to Context Bridge (save $20)
   - **Price**: $100.00 USD
   - **Billing**: Recurring, yearly
3. Click **Save Product**
4. Click **Create payment link**
5. Copy the payment link

---

## Step 3: Update Landing Page (2 min)

Edit: `/Users/alexa/context-bridge/index.html`

Find these lines (around line 80-90):
```html
<!-- Current TEST mode links -->
<a href="https://buy.stripe.com/test_9B6cN4fOr6bYbvi8xD4ko00">
<a href="https://buy.stripe.com/test_dRm9AS8lZ0REbviaFL4ko01">
```

Replace with your new LIVE payment links:
```html
<!-- LIVE mode links -->
<a href="https://buy.stripe.com/XXXXX">  <!-- Your monthly link -->
<a href="https://buy.stripe.com/XXXXX">  <!-- Your annual link -->
```

---

## Step 4: Deploy Updated Page (30 sec)

```bash
cd /Users/alexa/context-bridge
git add index.html
git commit -m "💳 Switch to Stripe live mode"
git push

# If using Cloudflare Pages, it auto-deploys from GitHub
# Check deploy status at: https://dash.cloudflare.com/
```

---

## Step 5: Test Purchase Flow (1 min)

### Use Stripe Test Cards (even in live mode)
1. Go to your live landing page
2. Click "Get Started" → "Monthly" or "Annual"
3. Use test card: **4242 4242 4242 4242**
   - Any future expiry date
   - Any 3-digit CVC
   - Any US ZIP code

**OR** use real card to verify it works!

---

## What You'll Get

Once live:
- ✅ Accept real credit card payments
- ✅ Stripe handles all payment processing
- ✅ Automatic invoicing
- ✅ Email receipts to customers
- ✅ Dashboard to track revenue

---

## Payment Links

**Current (Test Mode)**:
- Monthly: https://buy.stripe.com/test_9B6cN4fOr6bYbvi8xD4ko00
- Annual: https://buy.stripe.com/test_dRm9AS8lZ0REbviaFL4ko01

**After Setup (Live Mode)**:
- Monthly: `<your-link-here>`
- Annual: `<your-link-here>`

---

## Important Notes

### Tax Settings
- Stripe automatically handles tax calculation
- May need to configure tax settings for your region
- Go to: **Settings** → **Tax** (can do later)

### Webhooks (Optional for v0.1.0)
- Not required for payment links
- Can add later for advanced features
- Go to: **Developers** → **Webhooks**

### Customer Portal (Recommended)
- Let customers manage subscriptions
- Go to: **Settings** → **Billing** → **Customer portal**
- Enable self-service (cancellation, update card, etc.)

---

## Verification Checklist

After setup:
- [ ] Stripe dashboard shows "Live Mode"
- [ ] Two products created (Monthly $10, Annual $100)
- [ ] Payment links copied
- [ ] index.html updated with live links
- [ ] Changes pushed to GitHub
- [ ] Cloudflare Pages deployed
- [ ] Test purchase successful

---

## Quick Commands

```bash
# Update landing page
cd /Users/alexa/context-bridge
nano index.html  # Or use your editor
# Replace test payment links with live ones

# Deploy
git add index.html
git commit -m "💳 Stripe live mode activated"
git push

# Verify deployment
curl https://context-bridge.pages.dev | grep "buy.stripe.com"
```

---

**Ready to accept real payments! 💰**
