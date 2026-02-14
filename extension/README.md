# Context Bridge Browser Extension

> One-click context injection for AI assistants

A Chrome/Edge extension that adds an "Insert Context" button to Claude, ChatGPT, Copilot, and Gemini.

## Features

- ✨ **One-Click Injection**: Button appears in AI chat interfaces
- 🎯 **Works Everywhere**: Claude, ChatGPT, Copilot, Gemini
- 🔄 **Persistent**: Set once, use everywhere
- 🎨 **Beautiful UI**: Gradient button that matches Context Bridge branding
- ✅ **Visual Feedback**: Shows when context is injected
- 📋 **Clipboard Support**: Copy your context URL easily

## Supported AI Platforms

- ✅ **Claude.ai** - claude.ai
- ✅ **ChatGPT** - chat.openai.com, chatgpt.com
- ✅ **Microsoft Copilot** - copilot.microsoft.com
- ✅ **Google Gemini** - gemini.google.com

## Installation

### From Chrome Web Store (Coming Soon)
1. Visit Chrome Web Store
2. Click "Add to Chrome"
3. Done!

### Manual Installation (For Testing)
1. Clone this repo or download the `extension/` folder
2. Open Chrome and go to `chrome://extensions`
3. Enable "Developer mode" (top right)
4. Click "Load unpacked"
5. Select the `extension/` directory
6. Done!

## Setup

### 1. Get Your Context URL

**Option A: Use the CLI** (recommended)
```bash
npm install -g @context-bridge/cli
context login
context init
context url --raw
```

**Option B: Use the Website**
1. Go to [context-bridge.pages.dev](https://context-bridge.pages.dev)
2. Create your context
3. Copy the raw URL

### 2. Configure Extension
1. Click the Context Bridge icon in your browser toolbar
2. Paste your context URL
3. Click "Save"

### 3. Use It!
1. Go to Claude, ChatGPT, or any supported AI
2. Look for the colorful "Insert Context" button
3. Click it to inject: `Read [your-url] first, then help me with: `
4. Continue typing your question!

## How It Works

1. **Content Scripts**: Injected into each AI platform
2. **Button Injection**: Finds the input area and adds the button
3. **URL Storage**: Your context URL is stored via `chrome.storage.sync`
4. **Context Insertion**: Clicking the button inserts the context message
5. **Visual Feedback**: Button shows checkmark when context is inserted

## Development

### Structure
```
extension/
├── manifest.json           # Extension manifest (V3)
├── background/
│   └── service-worker.js   # Background logic
├── content/
│   ├── claude.js           # Claude content script
│   ├── chatgpt.js          # ChatGPT content script
│   ├── copilot.js          # Copilot content script
│   ├── gemini.js           # Gemini content script
│   └── styles.css          # Shared styles
├── popup/
│   ├── popup.html          # Extension popup
│   ├── popup.css           # Popup styles
│   └── popup.js            # Popup logic
└── icons/                  # Extension icons
```

### Testing

1. Load unpacked extension
2. Set a test context URL
3. Visit each supported AI platform:
   - claude.ai
   - chat.openai.com
   - copilot.microsoft.com
   - gemini.google.com
4. Verify button appears
5. Click button and verify text insertion
6. Check visual feedback (checkmark)

### Debugging

**Check if loaded:**
```javascript
// In console on AI platform
console.log('Context Bridge loaded?', !!document.querySelector('.context-bridge-button'));
```

**Check storage:**
```javascript
// In extension popup console
chrome.storage.sync.get(['rawUrl'], console.log);
```

**Reload after changes:**
1. Go to `chrome://extensions`
2. Click refresh icon on Context Bridge
3. Reload AI platform page

## Permissions

- **storage**: Store context URL
- **activeTab**: Access current tab when button clicked
- **host_permissions**: Inject content scripts on AI platforms

## Privacy

- **No tracking**: We don't collect any data
- **Local storage**: Context URL stored locally in browser
- **No server**: Everything runs in your browser
- **Open source**: Code is fully visible

## Compatibility

- **Chrome**: 88+
- **Edge**: 88+
- **Brave**: 88+
- **Opera**: 74+
- **Arc**: Yes
- **Firefox**: Coming soon (Manifest V2)
- **Safari**: Coming soon

## Troubleshooting

### Button doesn't appear
1. Check if extension is enabled
2. Refresh the AI platform page
3. Check console for errors
4. Make sure you're on a supported platform

### Context not injecting
1. Make sure context URL is set in popup
2. Check if URL is valid (GitHub Gist raw URL)
3. Try clicking button again

### Extension not syncing
1. Make sure you're logged into Chrome
2. Check if sync is enabled in Chrome settings
3. Try manually entering URL on each device

## Publishing

### Chrome Web Store
1. Create developer account ($5 one-time fee)
2. Zip the extension folder
3. Upload to Chrome Web Store
4. Fill in description, screenshots
5. Submit for review (1-3 days)

### Chrome Web Store Listing
- **Name**: Context Bridge
- **Description**: One-click context injection for AI assistants
- **Category**: Productivity
- **Screenshots**: Show button on Claude, ChatGPT
- **Icon**: 128x128 gradient icon

## Roadmap

- [ ] Publish to Chrome Web Store
- [ ] Firefox support (Manifest V2)
- [ ] Safari support (Safari App Extension)
- [ ] Context preview in popup
- [ ] Multiple context profiles
- [ ] Quick edit mode
- [ ] Auto-update context from gist
- [ ] Keyboard shortcuts
- [ ] Custom insertion templates

## Related Projects

- **CLI**: [@context-bridge/cli](../cli) - Terminal tool for managing contexts
- **Website**: [context-bridge.pages.dev](https://context-bridge.pages.dev) - Marketing + web creator
- **API**: Cloudflare Worker for context creation

## Contributing

Contributions welcome! To add support for a new AI platform:

1. Create `content/platform-name.js`
2. Add to manifest.json:
   ```json
   {
     "matches": ["https://platform.com/*"],
     "js": ["content/platform-name.js"]
   }
   ```
3. Implement button injection logic
4. Test thoroughly
5. Submit PR

## License

MIT

## Links

- [Context Bridge Website](https://context-bridge.pages.dev)
- [GitHub Repository](https://github.com/blackboxprogramming/context-bridge)
- [Report Issues](https://github.com/blackboxprogramming/context-bridge/issues)

---

Made with ❤️ by [Context Bridge](https://context-bridge.pages.dev)
