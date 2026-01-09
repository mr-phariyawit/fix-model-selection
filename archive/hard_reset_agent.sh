#!/bin/bash

# Hard Reset Script for Antigravity Agent
# Fixes "Agent terminated due to error" / 413 Payload Too Large
# Usage: ./hard_reset_agent.sh

echo "🔴 Starting Antigravity Hard Reset..."

# Define paths
AG_DIR="$HOME/.gemini/antigravity"
CONV_DIR="$AG_DIR/conversations"
BACKUP_DIR="$AG_DIR/old_conversations_backup"
STATE_DIR="$AG_DIR/context_state"
SCRATCH_DIR="$AG_DIR/scratch"

# 1. Backup large conversation logs (>5MB)
if [ -d "$CONV_DIR" ]; then
    echo "📦 Backing up large conversation logs (>5MB)..."
    mkdir -p "$BACKUP_DIR"
    find "$CONV_DIR" -name "*.pb" -size +5M -exec mv -v {} "$BACKUP_DIR/" \;
else
    echo "⚠️  Conversation directory not found: $CONV_DIR"
fi

# 2. Clear Context State and Scratch
echo "🧹 Cleaning context state and scratch..."
rm -rf "$STATE_DIR" "$SCRATCH_DIR"

# 3. Recreate directories
mkdir -p "$STATE_DIR" "$SCRATCH_DIR"

echo "✅ Hard Reset Complete."
echo "👉 Please restart your IDE now."
