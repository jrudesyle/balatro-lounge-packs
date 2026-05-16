#!/bin/bash
# Balatro Lounge Packs - Royalty-Free Music Downloader
# Downloads casino/lounge music from royalty-free sources

PACK_DIR="$HOME/projects/balatro-lounge-packs"
mkdir -p "$PACK_DIR"/{vegas-classic,vegas-modern,vegas-lounge,downloads}

echo "🎰 Downloading royalty-free casino music for Balatro..."
echo ""

# Check dependencies
if ! command -v youtube-dl &> /dev/null && ! command -v yt-dlp &> /dev/null; then
    echo "❌ Need yt-dlp or youtube-dl to download from YouTube Audio Library"
    echo "   Install: pip install yt-dlp"
    exit 1
fi

if ! command -v ffmpeg &> /dev/null; then
    echo "❌ Need ffmpeg to convert audio"
    echo "   Install: sudo pacman -S ffmpeg"
    exit 1
fi

DOWNLOADER="yt-dlp"
if ! command -v yt-dlp &> /dev/null; then
    DOWNLOADER="youtube-dl"
fi

echo "✅ Using $DOWNLOADER for downloads"
echo ""

# Vegas Classic Pack - Chiptune/Retro Jazz
echo "📦 Pack 1: Vegas Classic (Chiptune Lounge Jazz)"
echo "   Searching YouTube Audio Library..."

# Kevin MacLeod - Free, royalty-free, perfect for casino vibes
CLASSIC_TRACKS=(
    "https://www.youtube.com/watch?v=_WoqCd57AP0" # Swing Circus
    "https://www.youtube.com/watch?v=iiE5mE0ZorE" # Swingin' Shoes
    "https://www.youtube.com/watch?v=dQw4w9WgXcQ" # Jazz Comedy (placeholder)
)

# Vegas Modern Pack - Synthwave/Electronic
echo ""
echo "📦 Pack 2: Vegas Modern (Synthwave/Electronic)"
MODERN_TRACKS=(
    "https://www.youtube.com/watch?v=example1" # High energy electronic
    "https://www.youtube.com/watch?v=example2" # Upbeat synthwave
)

# Vegas Lounge Pack - Smooth/Chill
echo ""
echo "📦 Pack 3: Vegas Lounge (Smooth Jazz/Chill)"
LOUNGE_TRACKS=(
    "https://www.youtube.com/watch?v=example3" # Smooth jazz
    "https://www.youtube.com/watch?v=example4" # Cocktail lounge
)

echo ""
echo "⚠️  This script is a template. I'll need to:"
echo "   1. Find specific royalty-free track URLs"
echo "   2. Download them properly"
echo "   3. Convert to .ogg format"
echo ""
echo "Let me search for actual tracks now..."
