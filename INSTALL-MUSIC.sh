#!/bin/bash
# One-click music installer for Lounge Packs
# Reads your theme choice from the mod and installs it automatically

MOD_DIR="$HOME/.local/share/Steam/steamapps/compatdata/2379780/pfx/drive_c/users/steamuser/AppData/Roaming/Balatro/Mods/balatro-lounge-packs"
CONFIG_FILE="$MOD_DIR/config.lua"
BALATRO_MUSIC="$HOME/balatro-extracted/resources/music"

# Read selected pack
if [ ! -f "$CONFIG_FILE" ]; then
    echo "❌ Config not found. Did you set a theme in-game first?"
    exit 1
fi

selected=$(grep "selected_pack" "$CONFIG_FILE" | sed 's/.*"\(.*\)".*/\1/')

if [ -z "$selected" ]; then
    echo "❌ No theme selected. Open Balatro → Mods → Lounge Packs and pick a theme first!"
    exit 1
fi

# Map to folder
case "$selected" in
    classic) folder="vegas-classic" ;;
    modern) folder="vegas-modern" ;;
    lounge) folder="vegas-lounge" ;;
    *) echo "❌ Unknown theme: $selected"; exit 1 ;;
esac

echo "🎵 Installing: $selected"

# Check Balatro extracted
if [ ! -d "$BALATRO_MUSIC" ]; then
    echo ""
    echo "❌ Balatro not extracted yet!"
    echo ""
    echo "Run this first:"
    echo "  7z x ~/.local/share/Steam/steamapps/common/Balatro/Balatro.exe -o~/balatro-extracted"
    echo ""
    exit 1
fi

# Backup original (first time)
if [ ! -d "$HOME/balatro-music-backup" ]; then
    echo "📦 Backing up original music..."
    mkdir -p "$HOME/balatro-music-backup"
    cp -r "$BALATRO_MUSIC"/* "$HOME/balatro-music-backup/"
fi

# Install
echo "📁 Copying $folder → Balatro music folder..."
cp -v "$MOD_DIR/$folder"/*.ogg "$BALATRO_MUSIC/"

echo ""
echo "✅ Done! Theme: $selected"
echo "🎮 Restart Balatro to hear the new music"
