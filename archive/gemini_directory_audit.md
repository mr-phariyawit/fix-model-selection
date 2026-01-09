# Audit Report: ~/.gemini Directory

**Date:** 2026-01-09
**Total Size:** 2.1 GB

## 📂 Directory Overview

### 1. 🌐 Browser Profile (`antigravity-browser-profile`)

- **Size:** **1.6 GB** (76% of total)
- **Purpose:** Stores the isolated Chrome user profile for the Agent's browser tool (cookies, cache, session data).
- **Status:** Normal. This grows over time but is effectively a sandbox.

### 2. 🧠 Agent Data (`antigravity`)

- **Total Size:** **507 MB**
- **Key Subdirectories:**
  - **`old_conversations_backup`**: **374 MB**. Archive of past conversation logs. Safe to delete if history is not needed.
  - **`implicit`**: **76 MB**. Internal memory/context vectors.
  - **`brain`**: **32 MB**. Active artifacts, task lists, and workspace-specific memories.
  - **`conversations`**: **22 MB**. Active conversation logs (Text/JSON).
  - **`knowledge`**: **1.5 MB**. Curated Knowledge Items (KIs). Highly optimized.
  - **`browser_recordings`**: **0 B** (Purged). Was 900MB+, now clear.

### 3. 📜 Scripts (`scripts`)

- **Size:** 4.0 KB
- **Files:**
  - `hard_reset_agent.sh`: The original V1 reset script.
  - _(Note: `hard_reset_v2.sh` is currently located in your Documents folder, not here)_.

### 4. ⚙️ Configuration

- **`GEMINI.md`**: Global Rules and System Instructions file.

## 💡 Recommendations

1. **Reduce Storage:** You can safely delete `old_conversations_backup` if you don't need to reference very old chats.
   - Command: `rm -rf ~/.gemini/antigravity/old_conversations_backup`
2. **Maintenance:** The `browser_recordings` folder was the main bloat (900MB) causing 413 errors, but it is now clean.
3. **Hard Reset V2:** Move your new `hard_reset_v2.sh` to this scripts folder for safekeeping if desired.
   - Command: `mv ~/Documents/fix-model-selection/hard_reset_v2.sh ~/.gemini/scripts/`
