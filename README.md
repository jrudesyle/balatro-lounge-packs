# Balatro Vegas Casino Music Packs 🎰

## 3 Themed Packs

### Pack 1: Vegas Classic (Rat Pack Era)
**Vibe:** Frank Sinatra, Dean Martin, classic Vegas lounge
**Search terms:** "royalty free lounge jazz", "vintage casino music", "swing jazz instrumental"

### Pack 2: Vegas Modern (High Energy)
**Vibe:** EDM, electronic, modern casino floor energy
**Search terms:** "royalty free EDM", "casino electronic music", "upbeat instrumental"

### Pack 3: Vegas Lounge (Smooth & Chill)
**Vibe:** Cocktail lounge, smooth jazz, relaxing
**Search terms:** "royalty free smooth jazz", "lounge music", "bossa nova instrumental"

---

## How to Install Custom Music

### Step 1: Extract Balatro's Music Files
Balatro uses LÖVE framework—music is inside `Balatro.exe`.

**Option A: Use 7zip (Windows/Wine)**
```bash
7z x ~/.local/share/Steam/steamapps/common/Balatro/Balatro.exe -o~/balatro-extracted
```

**Option B: Manual LÖVE extraction**
```bash
# Balatro.exe is actually a .love file appended to love.exe
# Extract starting from the .love file signature
dd if=~/.local/share/Steam/steamapps/common/Balatro/Balatro.exe of=~/balatro.love bs=1 skip=$(grep -oba "PK" ~/.local/share/Steam/steamapps/common/Balatro/Balatro.exe | head -1 | cut -d: -f1)
unzip ~/balatro.love -d ~/balatro-extracted
```

### Step 2: Find Music Folder
After extraction, music will be in:
```
~/balatro-extracted/resources/music/
```

### Step 3: Get Royalty-Free Music

**Best Sources:**
- **YouTube Audio Library** (100% free, royalty-free)
- **FreeMusicArchive.org** (CC-licensed music)
- **Incompetech.com** (Kevin MacLeod's massive library)
- **Bensound.com** (good casino/lounge tracks)

### Step 4: Convert to OGG Format
```bash
# Convert MP3 to OGG
ffmpeg -i input.mp3 -c:a libvorbis -q:a 5 output.ogg

# Batch convert all MP3s in a folder
for f in *.mp3; do ffmpeg -i "$f" -c:a libvorbis -q:a 5 "${f%.mp3}.ogg"; done
```

### Step 5: Replace Music Files
1. Backup original music folder
2. Replace `.ogg` files with your converted tracks
3. Keep original filenames OR rename your tracks to match

### Step 6: Repack (if needed)
If Balatro loads from extracted folder:
```bash
cd ~/balatro-extracted
zip -r ../balatro-modded.love .
```

---

## Recommended Tracks (Royalty-Free)

### Vegas Classic Pack
- Kevin MacLeod - "Swing Circus"
- Kevin MacLeod - "Swingin' Shoes"
- Bensound - "Jazzy Frenchy"

### Vegas Modern Pack
- Bensound - "Energy"
- Kevin MacLeod - "Pixel Peeker Polka"
- FreeMusicArchive - search "upbeat electronic"

### Vegas Lounge Pack
- Bensound - "Tenderness"
- Kevin MacLeod - "Lobby Time"
- Bensound - "Relaxing"

---

## Quick Start Script

I'll create an automated downloader + converter if you want specific tracks.

**Want me to:**
1. Search for specific royalty-free Vegas casino music?
2. Download and convert them automatically?
3. Create ready-to-use music packs?

Let me know!
