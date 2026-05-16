#!/bin/bash
# Lounge Packs Music Installer
# Run this after changing music theme in the mod config

MOD_DIR="$HOME/.local/share/Steam/steamapps/compatdata/2379780/pfx/drive_c/users/steamuser/AppData/Roaming/Balatro/Mods/balatro-lounge-packs"
CONFIG_FILE="$MOD_DIR/config.lua"

# Read selected pack from config
if [ ! -f "$CONFIG_FILE" ]; then
    echo "❌ Config file not found: $CONFIG_FILE"
    exit 1
fi

# Extract selected_pack value from Lua config
selected=$(grep "selected_pack" "$CONFIG_FILE" | sed 's/.*"\(.*\)".*/\1/')

if [ -z "$selected" ]; then
    echo "❌ Could not read selected pack from config"
    exit 1
fi

echo "🎵 Installing music pack: $selected"

# Map pack name to folder
case "$selected" in
    classic)
        pack_folder="vegas-classic"
        ;;
    modern)
        pack_folder="vegas-modern"
        ;;
    lounge)
        pack_folder="vegas-lounge"
        ;;
    *)
        echo "❌ Unknown pack: $selected"
        exit 1
        ;;
esac

# Check if Balatro is extracted
BALATRO_MUSIC="$HOME/balatro-extracted/resources/music"
if [ ! -d "$BALATRO_MUSIC" ]; then
    echo "❌ Balatro music folder not found: $BALATRO_MUSIC"
    echo ""
    echo "You need to extract Balatro first. Run:"
    echo "  7z x ~/.local/share/Steam/steamapps/common/Balatro/Balatro.exe -o~/balatro-extracted"
    exit 1
fi

# Backup original music (first time only)
if [ ! -d "$HOME/balatro-music-backup" ]; then
    echo "📦 Backing up original Balatro music..."
    mkdir -p "$HOME/balatro-music-backup"
    cp -r "$BALATRO_MUSIC"/* "$HOME/balatro-music-backup/"
fi

# Install selected pack
echo "📁 Copying $pack_folder tracks to Balatro..."
cp -v "$MOD_DIR/$pack_folder"/*.ogg "$BALATRO_MUSIC/"

echo ""
echo "✅ Music pack installed!"
echo "   Theme: $selected"
echo ""
echo "🎮 Restart Balatro to hear the new music"
