# Balatro Lounge Packs 🎰🎵

A Balatro mod that lets you switch between three Vegas casino-themed music packs directly from the mod menu.

## 📦 Music Themes

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

### Quick Install (Steam Deck / Arch Linux)

1. **Install Steamodded** (if you haven't already)
   - Follow the [Steamodded installation guide](https://github.com/Steamopollys/Steamodded)

2. **Copy mod files to Balatro mods folder:**
   ```bash
   # On Arch Linux:
   cp -r ~/projects/balatro-lounge-packs ~/.local/share/Steam/steamapps/compatdata/2379780/pfx/drive_c/users/steamuser/AppData/Roaming/Balatro/Mods/
   
   # On Steam Deck:
   cp -r ~/projects/balatro-lounge-packs /home/deck/.local/share/Steam/steamapps/compatdata/2379780/pfx/drive_c/users/steamuser/AppData/Roaming/Balatro/Mods/
   ```

3. **Launch Balatro** via Steamodded

4. **Configure music theme:**
   - Open **Mods Menu** in-game
   - Find **Lounge Packs**
   - Select your music theme: Classic / Modern / Lounge
   - Click **Save**
   - **Restart Balatro** to hear the new music

---

## ⚙️ Configuration

**In-game mod menu:**
- Music Theme dropdown (Classic / Modern / Lounge)
- Selection persists between launches
- Restart game to apply music changes

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
