# ☢️ FACTORY RESET INSTRUCTIONS v2.0

> **Purpose:** Complete reset of the Antigravity Agent to fix 413 errors, corruption, or other critical issues.  
> **Safety:** Your project files (Documents) are untouched. Only the Agent's "brain" is reset.

---

## 📋 Pre-Reset Checklist

Before resetting, ensure these backups exist:

| File | Backup Location | Command |
|------|-----------------|---------|
| Global Rules | `~/Documents/fix-model-selection/GEMINI_backup.md` | `cp ~/.gemini/GEMINI.md ~/Documents/fix-model-selection/GEMINI_backup.md` |
| Full Brain | `~/.gemini_OLD_YYYY` (created during reset) | Auto-created in Step 1 |

---

## 🔴 Step 1: Reset (Creates Backup Automatically)

1. **Close** Antigravity completely
2. Open Mac **Terminal** app
3. Run this command:

```bash
# Creates backup AND resets in one command
mv ~/.gemini ~/.gemini_OLD_$(date +%Y%m%d)
```

> **What this does:** Renames the corrupted folder (e.g., `~/.gemini_OLD_20260110`), effectively resetting the Agent while keeping a backup.

---

## 🟢 Step 2: Restart & Basic Restore

1. **Reopen** Antigravity — it will start fresh
2. Open your project folder
3. **Restore Global Rules** (run in built-in terminal):

```bash
cp ~/Documents/fix-model-selection/GEMINI_backup.md ~/.gemini/GEMINI.md
```

✅ **Minimal reset complete!** Agent has your rules but fresh history.

---

## 🔵 Step 3: Full Brain Restore (Optional)

If you want to restore conversations, knowledge items, and history:

```bash
# Replace YYYYMMDD with your backup date (e.g., 20260110)
cp -r ~/.gemini_OLD_YYYYMMDD/antigravity ~/.gemini/antigravity
```

> **⚠️ Warning:** Only do this if the 413 error was NOT caused by corrupted brain data. If the error returns after restore, you'll need to skip this step.

---

## ✅ Step 4: Verify Restore

Run these commands to confirm everything is restored:

```bash
# Check structure
ls -la ~/.gemini/

# Check Global Rules
head -5 ~/.gemini/GEMINI.md

# Check brain (if restored)
du -sh ~/.gemini/antigravity/
```

**Expected output:**
- `GEMINI.md` should show your Global Rules header
- `antigravity/` should be ~100-200MB if brain was restored

---

## 🧹 Cleanup (After Confirming Fix)

Once you've verified the Agent works correctly for 24-48 hours:

```bash
# Remove old backup to free space
rm -rf ~/.gemini_OLD_*
```

---

## 🚨 Troubleshooting

| Issue | Solution |
|-------|----------|
| 413 error returns after brain restore | Don't restore brain, use minimal reset only |
| Agent doesn't recognize Global Rules | Restart the IDE after copying GEMINI.md |
| Nested `antigravity/antigravity` folder | Run: `rm -rf ~/.gemini/antigravity/antigravity` |
| Backup folder not found | Check exact name with: `ls -la ~/.gemini_OLD_*` |

---

## 📁 Backup Locations Reference

```
~/.gemini/                          # Current Agent data
~/.gemini_OLD_YYYYMMDD/             # Backup from reset
~/Documents/fix-model-selection/
├── GEMINI_backup.md                # Global Rules backup
├── RESET_INSTRUCTIONS.md           # This file
└── hard_reset_v2.sh                # Automation script
```

---

*Last updated: 2026-01-10*
