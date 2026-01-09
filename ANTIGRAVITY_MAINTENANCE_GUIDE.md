# 🛸 Antigravity Factory Reset Guide

> **Purpose:** Complete reset to fix 413 errors, corruption, or critical issues.  
> **Safety:** Your project files (Documents) are untouched.  
> *Last updated: 2026-01-10*

---

## 📋 Quick Reference

| Action | Command |
|:-------|:--------|
| **Full Reset + Restore** | `./antigravity_toolkit.sh full` ✅ RECOMMENDED |
| Factory Reset Only | `./antigravity_toolkit.sh factory` |
| Restore Rules | `./antigravity_toolkit.sh restore-rules` |
| Restore Brain | `./antigravity_toolkit.sh restore-brain` |

---

## 🚀 One Command Usage

```bash
cd ~/Documents/fix-model-selection
./antigravity_toolkit.sh full
```

This will:
1. Factory reset (backup `~/.gemini` → `~/.gemini_OLD_*`)
2. Automatically restore Global Rules
3. Ready to start Antigravity!

Resets the Agent completely. Creates automatic backup.

```bash
cd ~/Documents/fix-model-selection
./antigravity_toolkit.sh factory
```

This will:
1. Close Antigravity
2. Move `~/.gemini` → `~/.gemini_OLD_YYYYMMDD_HHMMSS`
3. Show restore instructions

---

## 🟢 Restore Global Rules

After factory reset, restore your Global Rules:

```bash
./antigravity_toolkit.sh restore-rules
```

Or manually copy the content from [Global Rules Backup](#-global-rules-backup) section below.

---

## 🔵 Restore Brain (Optional)

Restore conversations, knowledge items, and history:

```bash
./antigravity_toolkit.sh restore-brain
```

> ⚠️ Skip this if 413 was caused by corrupted brain data.

---

## ✅ Verify

```bash
ls -la ~/.gemini/
head -5 ~/.gemini/GEMINI.md
```

---

## 🧹 Cleanup (After 24-48 Hours)

```bash
rm -rf ~/.gemini_OLD_*
```

---

## 🚨 Troubleshooting

| Issue | Solution |
|:------|:---------|
| 413 error | `./antigravity_toolkit.sh factory` |
| 413 returns after brain restore | Factory reset again, don't restore brain |
| Agent doesn't recognize Global Rules | Restart IDE after restore |
| Backup folder not found | `ls -la ~/.gemini_OLD_*` |

---

## 📁 Files

| File | Location |
|:-----|:---------|
| This Guide | `~/Documents/fix-model-selection/ANTIGRAVITY_MAINTENANCE_GUIDE.md` |
| Toolkit | `~/Documents/fix-model-selection/antigravity_toolkit.sh` |
| Global Rules | `~/.gemini/GEMINI.md` |
| Backup | `~/.gemini_OLD_YYYYMMDD_HHMMSS/` |

---

## 📋 Global Rules Backup

> Copy this content to `~/.gemini/GEMINI.md` after factory reset.

```markdown
# Antigravity Global Rules

## ⚠️ IMPORTANT: Conversation Size Limit
> **สร้าง Chat ใหม่เมื่อ:**
> - Conversation ยาวเกิน 50 messages
> - พูดคุยหัวข้อใหม่ที่ไม่เกี่ยวข้องกับหัวข้อเดิม
> - Agent เริ่มตอบช้า หรือมีปัญหา
>
> **ทำไม?** Conversation ที่ใหญ่เกินไปเป็นสาเหตุหลักของ 413 error และ Agent terminated

## 🚀 Performance & Workflow
1.  **Vibe Coding**: Use "Goal -> Context -> Constraint" prompt structure.
2.  **Mode Selection**: Use "Deep Think" for planning, "Turbo" for execution.
3.  **Artifacts**: Debug via artifacts, not chat loops.
4.  **New Chat Often**: สร้าง Chat ใหม่บ่อยๆ — ไม่ต้องกลัวเสีย context, Agent มี memory

## 🚨 Emergency Protocols (Global Rules)

### 🔴 Global Rule #1: Agent Termination Protocol
**Trigger**: "Agent terminated", "Model provider overload", or 413 error.
**Resolution Steps:**

**Phase 0: Immediate Config Check (User Verification)**
1.  **HTTP Check**: Ensure **"HTTP Compatibility Mode"** is set to **"HTTP/1.1"** in IDE Settings > Network.
2.  **Resource Check**: Run `Developer: Open Process Explorer` and kill any high-RAM (>2GB) processes.

**Phase 1: Mitigation (Agent Actions)**
1.  **Downshift Model**: Switch models (High → Standard → Low).
2.  **DISABLE MCPs**: Temporarily disable **ALL** MCP servers. This is critical for 413 errors.
3.  **Context Cull**: Clear chat history or start a fresh session if context > 20k tokens.

**Phase 2: Hard Reset (If error persists)**
1.  **Close IDE**.
2.  **Run**: `./antigravity_toolkit.sh factory`
3.  **Restart IDE**.

### 🟠 Global Rule #2: Claude-MCP Conflict
If using Claude + MCP fails: **Disable ALL MCP servers** immediately. Retry one by one only if strictly necessary.

### 🟡 Global Rule #3: Token-Aware Context Hygiene
- **Strict Limit**: NEVER read files > 500 lines or > 50KB without checking first.
- **Pre-Check**: ALWAYS use `view_file_outline` or `du -h` before reading large files.
- **No Dumping**: Do not dump massive logs or `grep` output directly into chat. Pipe to a file and read snippets.

## 🛡️ Prevention Protocols
1.  **New Chat Habit**: สร้าง Chat ใหม่ทุก 30-50 messages หรือเมื่อเปลี่ยนหัวข้อ
2.  **Project Hygiene**: Ensure workspace has a valid `package.json` or `.git` root.
3.  **Network**: Use Cloudflare DNS (1.1.1.1) for connection stability.
4.  **Scratch Cleanup**: Periodically run `find ~/.gemini -name "*.scratch" -delete`.
```

---

*🛸 Antigravity Factory Reset Guide*
