#!/bin/bash
# Balatro Vegas Casino Music Pack Creator
# Creates 3 themed music packs for Balatro

PACK_DIR="$HOME/.openclaw/workspace/balatro-music-packs"
BALATRO_DIR="$HOME/.local/share/Steam/steamapps/common/Balatro"

mkdir -p "$PACK_DIR"/{vegas-classic,vegas-modern,vegas-lounge}

echo "🎰 Balatro Vegas Casino Music Pack Creator"
echo ""
echo "This will create 3 Vegas-themed music packs:"
echo "  1. Vegas Classic (Frank Sinatra era, Rat Pack vibes)"
echo "  2. Vegas Modern (EDM, club, high-energy casino floor)"
echo "  3. Vegas Lounge (smooth jazz, cocktail lounge, chill)"
echo ""
echo "📁 Packs will be created in: $PACK_DIR"
echo ""
echo "⚠️  NOTE: Balatro packs music inside Balatro.exe"
echo "   You'll need to extract it first using 7zip or a LÖVE unpacker."
echo ""
echo "Once you have the music files, run this script again to convert your tracks."
echo ""

# Check if ffmpeg is installed
if ! command -v ffmpeg &> /dev/null; then
    echo "❌ ffmpeg not found. Install it with: sudo pacman -S ffmpeg"
    exit 1
fi

echo "✅ ffmpeg found"
echo ""
echo "Next steps:"
echo "1. Find royalty-free Vegas casino music (YouTube Audio Library, FreeMusicArchive, etc.)"
echo "2. Download 3 sets of tracks (one for each theme)"
echo "3. Place them in the pack folders above"
echo "4. Run this script to convert them to .ogg format"
echo ""
echo "Want me to search for royalty-free casino music sources? (y/n)"
