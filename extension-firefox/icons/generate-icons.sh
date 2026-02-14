#!/bin/bash
# Generate simple SVG icons and convert to PNG

# Create SVG icon
cat > icon.svg << 'SVG'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 128 128">
  <defs>
    <linearGradient id="grad" x1="0%" y1="0%" x2="100%" y2="100%">
      <stop offset="0%" style="stop-color:#667eea;stop-opacity:1" />
      <stop offset="100%" style="stop-color:#764ba2;stop-opacity:1" />
    </linearGradient>
  </defs>
  <rect width="128" height="128" rx="20" fill="url(#grad)"/>
  <text x="64" y="85" font-family="Arial, sans-serif" font-size="70" font-weight="bold" fill="white" text-anchor="middle">CB</text>
</svg>
SVG

echo "✅ SVG icon created"
echo "📝 To generate PNGs, install ImageMagick: brew install imagemagick"
echo "   Then run: for size in 16 32 48 128; do convert icon.svg -resize ${size}x${size} icon${size}.png; done"
