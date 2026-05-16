# Balatro Lounge Packs 🎰🎵

Three Vegas casino-themed music packs for Balatro, featuring royalty-free lounge, jazz, and electronic tracks.

## 📦 Available Packs

### 1. Vegas Classic (Chiptune Lounge Jazz)
**Vibe:** Rat Pack era, swing jazz, retro casino
- Bossa Antigua (Kevin MacLeod)

### 2. Vegas Modern (Synthwave/Electronic)
**Vibe:** High-energy electronic, modern casino floor
- Pixel Peeker Polka (Kevin MacLeod)
- Electrodoodle (Kevin MacLeod)
- Chill Wave (Kevin MacLeod)

### 3. Vegas Lounge (Smooth/Chill)
**Vibe:** Cocktail lounge, smooth background music
- Lobby Time (Kevin MacLeod)
- Smooth Lovin (Kevin MacLeod)

---

## 🎮 Installation

### Quick Install (Copy-Paste Ready)

**Option 1: Replace Balatro's built-in music** (requires extracting game files first)
- See "Advanced Installation" below

**Option 2: Use with Music Replacement Mods**
- Compatible with any Balatro music mod loader
- Drop `.ogg` files into mod's music folder

### Advanced Installation

1. **Extract Balatro's music files**  
   Balatro packs music inside `Balatro.exe`. You'll need to extract it first.

   ```bash
   # Method 1: Using 7zip
   7z x ~/.local/share/Steam/steamapps/common/Balatro/Balatro.exe -o~/balatro-extracted

   # Method 2: Manual LÖVE extraction
   dd if=~/.local/share/Steam/steamapps/common/Balatro/Balatro.exe \
      of=~/balatro.love bs=1 \
      skip=$(grep -oba "PK" ~/.local/share/Steam/steamapps/common/Balatro/Balatro.exe | head -1 | cut -d: -f1)
   unzip ~/balatro.love -d ~/balatro-extracted
   ```

2. **Backup original music**
   ```bash
   mkdir ~/balatro-music-backup
   cp -r ~/balatro-extracted/resources/music/* ~/balatro-music-backup/
   ```

3. **Install your chosen pack**
   ```bash
   # Choose one:
   cp vegas-classic/*.ogg ~/balatro-extracted/resources/music/
   # OR
   cp vegas-modern/*.ogg ~/balatro-extracted/resources/music/
   # OR
   cp vegas-lounge/*.ogg ~/balatro-extracted/resources/music/
   ```

4. **Repack and launch**  
   (Instructions vary by OS—check Balatro modding guides)

---

## 🎵 Building the Packs Yourself

All music is downloaded from royalty-free sources.

```bash
# Clone this repo
git clone https://github.com/jrudesyle/balatro-lounge-packs
cd balatro-lounge-packs

# Download all tracks
./download-all.sh

# Convert to OGG format
./convert-to-ogg.sh
```

---

## 📜 Attribution

All music by **Kevin MacLeod** ([incompetech.com](https://incompetech.com))  
Licensed under Creative Commons: By Attribution 4.0 License  
http://creativecommons.org/licenses/by/4.0/

---

## 🛠️ Requirements

- **ffmpeg** (for converting MP3 → OGG)
- **wget** (for downloading tracks)

Install on Arch Linux:
```bash
sudo pacman -S ffmpeg wget
```

---

## ⚠️ Does This Disable Achievements?

**No!** Pure music replacement (swapping `.ogg` files) does NOT disable achievements because you're only changing audio assets, not game logic.

**However:** If you use a mod loader like Steamodded to inject music, achievements MAY be disabled.

---

## 📂 Pack Contents

- **vegas-classic/** - 1 track (~4.3 MB)
- **vegas-modern/** - 3 tracks (~11 MB total)
- **vegas-lounge/** - 2 tracks (~7.8 MB total)

---

## 🎲 Recommended Pairing

Combine with:
- **Tag Hunter** (my other mod) for auto-hunting specific blind tags
- **Balatro Speedup** for faster gameplay
- Any visual/UI mods

---

## 🤝 Contributing

Want to add more tracks? PR me!

Requirements:
- Must be **royalty-free** or Creative Commons licensed
- Must fit the Vegas casino/lounge theme
- Include proper attribution

---

## 📝 License

Music: Creative Commons BY 4.0 (Kevin MacLeod)  
Scripts/Repo: MIT

---

**Enjoy your Vegas casino soundtrack!** 🎰🍸
