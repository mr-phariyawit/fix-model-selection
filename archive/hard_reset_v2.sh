#!/bin/bash
# Antigravity Nuclear Hard Reset V2
# CAUTION: This will close your IDE and clear workspace cache. Unsaved work may be lost.

echo "☢️  INITIATING NUCLEAR HARD RESET (V2)..."
echo "⚠️  This will close Antigravity/Cursor and clear workspace storage."
echo "Press CTRL+C within 5 seconds to cancel..."
sleep 5

# 1. Kill Processes
echo "🔪 Killing Agent processes..."
pkill -f "Antigravity" || echo "Antigravity not running..."
pkill -f "Cursor" || echo "Cursor not running..."
pkill -f "VS Code" || echo "VS Code not running..."
pkill -f "rg" || echo "ripgrep not running..."
pkill -f "node" || echo "node processes cleaned..."

# 2. Deep Clean Brain (Antigravity Context)
echo "🧠 Wiping Agent Context..."
rm -rf ~/.gemini/antigravity/context_state
rm -rf ~/.gemini/antigravity/scratch
# Archive large conversations (keeping recent ones if possible, but safer to archive likely corrupt ones)
# Just clearing the active state is usually enough.

# 3. Nuclear Workspace Storage Wipe
echo "💥 Clearing IDE Workspace Storage (Fixes 413 Errors)..."
# Antigravity Path
rm -rf "$HOME/Library/Application Support/Antigravity/User/workspaceStorage"
rm -rf "$HOME/Library/Application Support/Antigravity/CachedData"
# Cursor Path (Fallback)
rm -rf "$HOME/Library/Application Support/Cursor/User/workspaceStorage"
rm -rf "$HOME/Library/Application Support/Cursor/CachedData"

# 4. Flush Network
echo "🚿 Flushing DNS Cache..."
sudo dscacheutil -flushcache
sudo killall -HUP mDNSResponder

echo "✅ NUCLEAR RESET COMPLETE."
echo "👉 Please restart Antigravity/Cursor now."
echo "   (You may need to re-open your folder/workspace)"
