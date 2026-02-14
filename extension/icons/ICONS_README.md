# Context Bridge Icons

## Current Status
SVG icon created: icon.svg (gradient purple "CB" logo)

## To Generate PNG Icons:

### Option 1: ImageMagick (recommended)
```bash
brew install imagemagick
for size in 16 32 48 128; do
  convert icon.svg -resize ${size}x${size} icon${size}.png
done
```

### Option 2: Online Converter
1. Upload icon.svg to https://cloudconvert.com/svg-to-png
2. Generate 16x16, 32x32, 48x48, 128x128 versions
3. Save as icon16.png, icon32.png, icon48.png, icon128.png

### Option 3: Figma/Design Tool
1. Open icon.svg in Figma
2. Export as PNG at different sizes

## What The Extension Needs:
- icon16.png (16x16) - toolbar icon
- icon32.png (32x32) - extension management
- icon48.png (48x48) - extension management
- icon128.png (128x128) - Chrome Web Store

## Current Workaround:
The manifest.json references these icons, but Chrome will use a default icon if they're missing.
Extension will still function, just without custom icons.
