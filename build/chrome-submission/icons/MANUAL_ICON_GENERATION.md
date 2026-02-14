# 🎨 Icon Generation Instructions

## Option 1: Use Online Tool (Easiest - 2 minutes)

1. Go to: https://svgtopng.com or https://cloudconvert.com/svg-to-png
2. Upload `icon.svg` from this directory
3. Generate PNG at 128x128
4. Download the PNG
5. Go to: https://www.iloveimg.com/resize-image/resize-png
6. Upload the 128x128 PNG and create:
   - 16x16 → save as `icon16.png`
   - 32x32 → save as `icon32.png`
   - 48x48 → save as `icon48.png`
   - 128x128 → save as `icon128.png`
7. Copy all 4 PNG files to:
   - `extension/icons/`
   - `extension-firefox/icons/`

## Option 2: Install ImageMagick (Better)

```bash
# Install ImageMagick
brew install imagemagick

# Run the generation script
cd /Users/alexa/context-bridge/extension/icons
./generate-icons.sh

# Copy to Firefox version
cp icon*.png ../../extension-firefox/icons/
```

## Option 3: Use Figma/Sketch/Any Design Tool

1. Open `icon.svg` in your design tool
2. Export as PNG at these sizes:
   - 16x16
   - 32x32
   - 48x48
   - 128x128
3. Name them: `icon16.png`, `icon32.png`, `icon48.png`, `icon128.png`
4. Copy to both extension directories

---

## What the Icon Looks Like

- **Purple gradient background** (matches modern extension aesthetic)
- **Golden bridge arc** connecting two pillars
- **"CB" text** at bottom (Context Bridge)
- **Connection dots** showing the bridge metaphor

Clean, modern, professional. Ready for Chrome Web Store!

---

## Quick Validation

After generating, run:
```bash
ls -lh extension/icons/icon*.png
ls -lh extension-firefox/icons/icon*.png
```

You should see 4 PNG files in each directory.

