# Edge Case Testing Plan

## Test Categories

### 1. Network Conditions
- [ ] Slow network (5s timeout)
- [ ] Offline mode
- [ ] Intermittent connection
- [ ] DNS failures
- [ ] SSL certificate errors

### 2. Input Validation
- [ ] Empty strings
- [ ] Very long URLs (2000+ chars)
- [ ] Special characters in name ($, ^, *, etc.)
- [ ] Unicode characters (emoji, Chinese, Arabic)
- [ ] Malformed URLs
- [ ] Non-GitHub URLs
- [ ] Private gists (should work)
- [ ] Deleted gists (should fail gracefully)

### 3. Content Size
- [ ] Empty context
- [ ] 1 byte context
- [ ] 1KB context
- [ ] 100KB context
- [ ] 1MB context
- [ ] 9.9MB context (near limit)
- [ ] 10.1MB context (over limit)

### 4. GitHub API
- [ ] Invalid token
- [ ] Expired token
- [ ] Revoked token
- [ ] Rate limited (403)
- [ ] GitHub downtime (500/503)
- [ ] Token without gist scope

### 5. Extension DOM
- [ ] Page loaded before extension
- [ ] Extension loaded before page
- [ ] Input not found (missing element)
- [ ] Multiple input areas
- [ ] Input removed after injection
- [ ] Page navigation (SPA)
- [ ] iframes

### 6. Browser Compatibility
- [ ] Chrome (latest)
- [ ] Chrome (2 versions old)
- [ ] Edge (latest)
- [ ] Brave (latest)
- [ ] Arc (latest)

### 7. Race Conditions
- [ ] Double-click button
- [ ] Click during loading
- [ ] Multiple tabs same site
- [ ] Storage sync conflict

### 8. CLI Edge Cases
- [ ] No internet connection
- [ ] $EDITOR not set
- [ ] Invalid editor command
- [ ] Editor crashes
- [ ] Config file corrupted
- [ ] Config directory permissions
- [ ] Template file deleted
- [ ] Template file corrupted

### 9. Cross-Platform
- [ ] macOS clipboard
- [ ] Windows clipboard
- [ ] Linux clipboard (multiple systems)
- [ ] Path separators
- [ ] Home directory expansion

### 10. Security
- [ ] XSS in context content
- [ ] XSS in gist description
- [ ] Script tags in template
- [ ] Click hijacking
- [ ] CSRF attempts
