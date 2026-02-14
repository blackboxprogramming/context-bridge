# Performance Improvements to Apply

## Priority 1: Critical for Scale

### 1. Add Context Caching (Extension)
**Problem**: Fetches context every button click
**Solution**: Cache with 5-minute TTL
**Impact**: 95% reduction in API calls
**Files**: extension/content/*.js

### 2. Add Request Queue (Extension)
**Problem**: Multiple tabs can hit API simultaneously
**Solution**: Shared request queue via background worker
**Impact**: Prevents rate limit exhaustion
**Files**: extension/background/service-worker.js

### 3. Add File Locking (CLI)
**Problem**: Concurrent CLI instances corrupt config
**Solution**: Use proper-lockfile package
**Impact**: Prevents data loss
**Files**: cli/lib/config.js

### 4. Add Memory Cleanup (Extension)
**Problem**: Event listeners not removed
**Solution**: Cleanup on page unload
**Impact**: Prevents memory leaks
**Files**: extension/content/*.js

## Priority 2: Important for UX

### 5. Add Streaming Fetch (Extension)
**Problem**: Large contexts freeze UI
**Solution**: Stream and render progressively
**Impact**: Better UX for large contexts
**Files**: extension/popup/popup.js

### 6. Add Storage Monitoring (Extension)
**Problem**: No warning when approaching quota
**Solution**: Check chrome.storage.sync.getBytesInUse()
**Impact**: Proactive error prevention
**Files**: extension/popup/popup.js

### 7. Optimize DOM Selectors (Extension)
**Problem**: Slow selectors on complex pages
**Solution**: More specific selectors, cache results
**Impact**: Faster button injection
**Files**: extension/content/*.js

### 8. Add Rate Limit Tracking (CLI)
**Problem**: No warning before hitting limit
**Solution**: Track requests, warn at 80%
**Impact**: Better UX, prevents errors
**Files**: cli/lib/gist.js

## Priority 3: Nice to Have

### 9. Add Lazy Loading (Extension)
**Problem**: All scripts load immediately
**Solution**: Load only when needed
**Impact**: Faster extension startup
**Files**: manifest.json

### 10. Add Compression (CLI)
**Problem**: Large contexts slow to upload
**Solution**: Gzip before upload
**Impact**: Faster uploads, less bandwidth
**Files**: cli/lib/gist.js

## Implementation Order

1. **Context Caching** (30 min) - Biggest impact
2. **Memory Cleanup** (20 min) - Prevents leaks
3. **File Locking** (15 min) - Prevents corruption
4. **Request Queue** (45 min) - Complex but important
5. **Storage Monitoring** (10 min) - Easy win
6. **DOM Optimization** (20 min) - Noticeable improvement
7. **Streaming Fetch** (40 min) - Large context support
8. **Rate Limit Tracking** (20 min) - Better error handling
