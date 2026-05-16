#!/bin/bash
# Random Balatro music pack installer
# Usage: ./install-random-pack.sh

PACK_DIR="$HOME/projects/balatro-lounge-packs"
BALATRO_MUSIC_DIR="$HOME/balatro-extracted/resources/music"

packs=(vegas-classic vegas-modern vegas-lounge)

choice=${packs[$RANDOM % ${#packs[@]}]}

echo "🎲 Randomly picked: $choice"

# Make sure the music folder exists
if [ ! -d "$BALATRO_MUSIC_DIR" ]; then
  echo "❌ Balatro music folder not found: $BALATRO_MUSIC_DIR"
  exit 1
fi

cp -v "$PACK_DIR/$choice"/*.ogg "$BALATRO_MUSIC_DIR/"
echo "✅ Installed $choice tracks into $BALATRO_MUSIC_DIR"
