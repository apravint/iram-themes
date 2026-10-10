# 🎨 IRAM Themes

> **A curated collection of 18 modern, high-fidelity themes and a dynamic synchronization engine for Hyprland, Wayland, and Linux terminals.**

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Platform: Linux/Wayland](https://img.shields.io/badge/Platform-Wayland%20%7C%20Hyprland-blueviolet.svg)]()
[![Themes](https://img.shields.io/badge/Themes-18%20Curated-success.svg)]()

`iram-themes` brings cohesive, beautiful visual styling across your entire desktop environment. When you switch a theme, every component updates **live with zero latency**—no window manager restarts required.

---

## 🌟 Supported Components

With a single command or hotkey, `iram-themes` synchronizes:

- 🪟 **Hyprland** (active/inactive borders, shadow colors, window decor)
- 📊 **Waybar** (accent colors, workspace pills, status widgets)
- 💻 **Terminals** (`Foot`, `Alacritty`, `Kitty`, `Ghostty`)
- 🔍 **App Launchers** (`Wofi`, `Rofi`)
- 🖼️ **Wallpapers** (Bespoke 4K matching backgrounds with `swww` / `hyprpaper`)
- 🎨 **GTK 3/4** & **Qt** theme overrides
- 📄 **CLI Utilities** (`Bat` syntax highlighting, `Neovim` color schemes)

---

## 🎭 The 18 Curated Themes

| Theme | Vibe / Style | Dominant Accents |
| :--- | :--- | :--- |
| **`ryoku-crimson`** | Deep obsidian with vivid scarlet neon | `#e06c75`, `#be5046` |
| **`tokyo-storm`** | Tokyo night cyberpunk storm | `#7aa2f7`, `#bb9af7` |
| **`catppuccin-mocha`**| Soothing pastel dark palette | `#cba6f7`, `#89b4fa` |
| **`dracula`** | Classic dark gothic vampire aesthetic | `#bd93f9`, `#ff79c6` |
| **`nord-frost`** | Arctic, north-bluish clean palette | `#88c0d0`, `#81a1c1` |
| **`cyberpunk-neon`** | High-contrast electric yellow & magenta | `#fcee0a`, `#ff003c` |
| **`kanagawa-wave`** | Japanese ukiyo-e woodblock painting tones | `#7e9cd8`, `#957fb8` |
| **`rose-pine-moon`** | Minimalist dusk pine and rose | `#ea9a97`, `#c4a7e7` |
| **`one-dark`** | Iconic Atom / Neovim deep coding theme | `#61afef`, `#c678dd` |
| **`night-owl`** | Sarah Drasner's dark visual aesthetic | `#82aaff`, `#c792ea` |
| **`oxocarbon`** | High-contrast IBM industrial dark | `#3ddbd9`, `#ee5396` |
| **`synthwave-84`** | Retro 80s outrun neon grid | `#ff7edb`, `#36f9f6` |
| **`monokai-pro`** | Professional sublime color filter | `#ffd866`, `#ff6188` |
| **`solarized-dark`**| Ethan Schoonover's precision palette | `#268bd2`, `#2aa198` |
| **`aura-dark`** | Purple haze and ethereal glows | `#a277ff`, `#61ffca` |
| **`ayu-mirage`** | Earthy twilight contrast | `#ffcc66`, `#73d0ff` |
| **`material-ocean`** | Deep abyss oceanic teal & blue | `#89ddff`, `#82aaff` |
| **`vesper`** | Midnight charcoal with warm amber accents | `#ffc799`, `#ff9e64` |

---

## 🚀 Quick Install

### One-Line Install
```bash
git clone https://github.com/apravint/iram-themes.git ~/.iram-themes
~/.iram-themes/install.sh
```

---

## 🕹️ Usage

### Interactive GUI Picker
Open the visual theme chooser:
```bash
iram-theme-switch
```

### Direct CLI Switch
Switch to any theme instantly:
```bash
iram-theme-switch tokyo-storm
iram-theme-switch ryoku-crimson
iram-theme-switch catppuccin-mocha
```

### Hyprland Hotkey Binding
Add this to your `~/.config/hypr/hyprland.conf`:
```ini
bind = $mainMod, T, exec, iram-theme-switch
```

---

## 🛠️ Adding Your Own Theme

Each theme is a directory inside `~/.config/iram/themes/<theme-name>` containing:
- `theme.conf`: Hyprland border and color definitions.
- `waybar.css`: CSS variables for Waybar.
- `wallpaper.png`: Matching wallpaper image.
- `foot.ini` / `alacritty.toml`: Terminal color configurations.

Pull requests for new themes are warmly welcome!

---

## 📄 License

Released under the [MIT License](LICENSE).
