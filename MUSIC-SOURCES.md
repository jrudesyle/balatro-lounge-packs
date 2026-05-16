# Balatro Lounge Packs - Music Sources

## Royalty-Free Music Sources (Safe & Legal)

### Best Sources for Casino/Lounge Music

1. **Incompetech.com (Kevin MacLeod)**
   - 100% free, royalty-free
   - Direct downloads, no signup
   - Perfect casino/lounge tracks

2. **Bensound.com**
   - Free for personal use (attribution)
   - High-quality casino vibes

3. **FreeMusicArchive.org**
   - CC-licensed music
   - Huge variety

---

## Pack 1: Vegas Classic (Chiptune Lounge Jazz)

**Direct Download Links:**

1. **Swing Circus** - Kevin MacLeod  
   https://incompetech.com/music/royalty-free/mp3-royaltyfree/Swing%20Circus.mp3

2. **Swingin' Shoes** - Kevin MacLeod  
   https://incompetech.com/music/royalty-free/mp3-royaltyfree/Swingin%27%20Shoes.mp3

3. **Jazz Comedy** - Kevin MacLeod  
   https://incompetech.com/music/royalty-free/mp3-royaltyfree/Jazz%20Comedy.mp3

4. **Bossa Antigua** - Kevin MacLeod  
   https://incompetech.com/music/royalty-free/mp3-royaltyfree/Bossa%20Antigua.mp3

---

## Pack 2: Vegas Modern (Synthwave/Electronic)

1. **Pixel Peeker Polka** - Kevin MacLeod  
   https://incompetech.com/music/royalty-free/mp3-royaltyfree/Pixel%20Peeker%20Polka%20-%20faster.mp3

2. **Electrodoodle** - Kevin MacLeod  
   https://incompetech.com/music/royalty-free/mp3-royaltyfree/Electrodoodle.mp3

3. **Chill Wave** - Kevin MacLeod  
   https://incompetech.com/music/royalty-free/mp3-royaltyfree/Chill%20Wave.mp3

---

## Pack 3: Vegas Lounge (Smooth/Chill)

1. **Lobby Time** - Kevin MacLeod  
   https://incompetech.com/music/royalty-free/mp3-royaltyfree/Lobby%20Time.mp3

2. **Smooth Lovin** - Kevin MacLeod  
   https://incompetech.com/music/royalty-free/mp3-royaltyfree/Smooth%20Lovin.mp3

3. **A New Beginning** - Bensound  
   https://www.bensound.com/bensound-music/bensound-anewbeginning.mp3

---

## Automated Download Script

Run this to download all tracks:

```bash
cd ~/projects/balatro-lounge-packs

# Pack 1: Vegas Classic
wget -P vegas-classic/ "https://incompetech.com/music/royalty-free/mp3-royaltyfree/Swing%20Circus.mp3"
wget -P vegas-classic/ "https://incompetech.com/music/royalty-free/mp3-royaltyfree/Swingin%27%20Shoes.mp3"
wget -P vegas-classic/ "https://incompetech.com/music/royalty-free/mp3-royaltyfree/Jazz%20Comedy.mp3"
wget -P vegas-classic/ "https://incompetech.com/music/royalty-free/mp3-royaltyfree/Bossa%20Antigua.mp3"

# Pack 2: Vegas Modern
wget -P vegas-modern/ "https://incompetech.com/music/royalty-free/mp3-royaltyfree/Pixel%20Peeker%20Polka%20-%20faster.mp3"
wget -P vegas-modern/ "https://incompetech.com/music/royalty-free/mp3-royaltyfree/Electrodoodle.mp3"
wget -P vegas-modern/ "https://incompetech.com/music/royalty-free/mp3-royaltyfree/Chill%20Wave.mp3"

# Pack 3: Vegas Lounge
wget -P vegas-lounge/ "https://incompetech.com/music/royalty-free/mp3-royaltyfree/Lobby%20Time.mp3"
wget -P vegas-lounge/ "https://incompetech.com/music/royalty-free/mp3-royaltyfree/Smooth%20Lovin.mp3"
```

## Convert to OGG

After downloading:

```bash
cd ~/projects/balatro-lounge-packs

# Convert all MP3s to OGG
for pack in vegas-classic vegas-modern vegas-lounge; do
    cd "$pack"
    for f in *.mp3; do
        ffmpeg -i "$f" -c:a libvorbis -q:a 5 "${f%.mp3}.ogg"
    done
    cd ..
done
```

---

## Attribution (Required for Kevin MacLeod)

Include this in your mod description:

> Music by Kevin MacLeod (incompetech.com)  
> Licensed under Creative Commons: By Attribution 4.0 License  
> http://creativecommons.org/licenses/by/4.0/
