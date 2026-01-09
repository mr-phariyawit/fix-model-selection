# Recursive Audit Report: ~/.gemini
**Date:** 2026-01-09
**Scope:** Full Recursive Loop
**Full Structure File:** [Gemini_Full_Structure.txt](file:///Users/mr.phariyawit/Documents/fix-model-selection/Gemini_Full_Structure.txt)

## 📊 Disk Usage Highlights (Top 20)

| Size | Path | Description |
| :--- | :--- | :--- |
| **2.1 GB** | `~/.gemini` | Total Root Size |
| **1.6 GB** | `antigravity-browser-profile` | Isolated Browser Data |
| **1.2 GB** | `antigravity-browser-profile/Default/Cache` | **SAFE TO DELETE** (Browser Cache) |
| **508 MB** | `antigravity` | Agent Core Data |
| **374 MB** | `antigravity/old_conversations_backup` | **SAFE TO DELETE** (Old History) |
| **77 MB** | `antigravity/implicit` | Agent Memory Vector Store |
| **32 MB** | `antigravity/brain` | Current Workspace Context |

### 📂 Detailed Analysis

#### 1. Browser Profile (1.6 GB)
The majority of the space is taken by **Google Chrome Cache** (`Default/Cache/Cache_Data`).
- **Action:** This folder can definitely be cleared to free up 1.2 GB. It will regenerate as needed.
- **Command:** `rm -rf ~/.gemini/antigravity-browser-profile/Default/Cache/*`

#### 2. Conversation Backups (374 MB)
Found many large history files (e.g., `b8fa0f64...pb` is 28MB).
- **Action:** If you don't need history from months ago, delete this entire folder.
- **Command:** `rm -rf ~/.gemini/antigravity/old_conversations_backup`

#### 3. Agent Scripts
- `hard_reset_agent.sh` (V1) is present.
- **Recommended:** Move your new `hard_reset_v2.sh` here.

## 🗂 Full Recursive List
I have generated a complete recursive list of every file and folder in the system.
👉 **[Open Gemini_Full_Structure.txt](file:///Users/mr.phariyawit/Documents/fix-model-selection/Gemini_Full_Structure.txt)** (Size: ~600KB)
