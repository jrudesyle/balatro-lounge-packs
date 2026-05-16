#!/bin/bash
# Convert all downloaded MP3s to OGG format for Balatro

cd ~/projects/balatro-lounge-packs

echo "🎵 Converting MP3 tracks to OGG format..."
echo ""

for pack in vegas-classic vegas-modern vegas-lounge; do
    echo "📦 Processing $pack..."
    cd "$pack"
    
    for f in *.mp3; do
        if [ -f "$f" ]; then
            output="${f%.mp3}.ogg"
            echo "  Converting: $f → $output"
            ffmpeg -i "$f" -c:a libvorbis -q:a 5 "$output" -y 2>/dev/null
            
            if [ $? -eq 0 ]; then
                echo "  ✅ Done"
            else
                echo "  ❌ Failed"
            fi
        fi
    done
    
    cd ..
    echo ""
done

echo "✅ All conversions complete!"
echo ""
echo "Music packs ready:"
echo "  - vegas-classic/ (Chiptune Lounge Jazz)"
echo "  - vegas-modern/ (Synthwave/Electronic)"
echo "  - vegas-lounge/ (Smooth/Chill)"
