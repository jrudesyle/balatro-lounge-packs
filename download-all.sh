#!/bin/bash
# Download royalty-free casino music for Balatro Lounge Packs

cd ~/projects/balatro-lounge-packs

echo "🎰 Downloading Vegas Casino Music Packs..."
echo ""

# Pack 1: Vegas Classic
echo "📦 Pack 1: Vegas Classic (Chiptune Lounge Jazz)"
cd vegas-classic
wget -q --show-progress "https://incompetech.com/music/royalty-free/mp3-royaltyfree/Swing Circus.mp3" -O "01-swing-circus.mp3"
wget -q --show-progress "https://incompetech.com/music/royalty-free/mp3-royaltyfree/Swingin' Shoes.mp3" -O "02-swingin-shoes.mp3"
wget -q --show-progress "https://incompetech.com/music/royalty-free/mp3-royaltyfree/Jazz Comedy.mp3" -O "03-jazz-comedy.mp3"
wget -q --show-progress "https://incompetech.com/music/royalty-free/mp3-royaltyfree/Bossa Antigua.mp3" -O "04-bossa-antigua.mp3"
cd ..

# Pack 2: Vegas Modern
echo ""
echo "📦 Pack 2: Vegas Modern (Synthwave/Electronic)"
cd vegas-modern
wget -q --show-progress "https://incompetech.com/music/royalty-free/mp3-royaltyfree/Pixel Peeker Polka - faster.mp3" -O "01-pixel-peeker.mp3"
wget -q --show-progress "https://incompetech.com/music/royalty-free/mp3-royaltyfree/Electrodoodle.mp3" -O "02-electrodoodle.mp3"
wget -q --show-progress "https://incompetech.com/music/royalty-free/mp3-royaltyfree/Chill Wave.mp3" -O "03-chill-wave.mp3"
cd ..

# Pack 3: Vegas Lounge
echo ""
echo "📦 Pack 3: Vegas Lounge (Smooth/Chill)"
cd vegas-lounge
wget -q --show-progress "https://incompetech.com/music/royalty-free/mp3-royaltyfree/Lobby Time.mp3" -O "01-lobby-time.mp3"
wget -q --show-progress "https://incompetech.com/music/royalty-free/mp3-royaltyfree/Smooth Lovin.mp3" -O "02-smooth-lovin.mp3"
cd ..

echo ""
echo "✅ Downloads complete!"
echo ""
echo "Next: Run ./convert-to-ogg.sh to convert all tracks to .ogg format"
