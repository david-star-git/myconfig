# Benutzerdefinierte Linux-Umgebung README

## Sprachversionen
[![Englisch](https://img.shields.io/badge/Englisch-Englisch-blau)](readme.md)
[![Deutsch](https://img.shields.io/badge/Deutsch-Deutsch-blau)](readme_de.md)
[![Spanisch](https://img.shields.io/badge/Spanisch-Spanisch-blau)](readme_es.md)

## Installierte Pakete
- libxft
- libx11
- libxinerama
- xorg-server
- xorg-xinit
- ttf-dejavu
- ttf-jetbrains-mono
- picom
- feh
- exa
- zsh-syntax-highlighting
- zsh-autosuggestions
- zip
- unzip
- bat
- bottom

## Thema
- **Thema:** Tokyo Night

## Terminal
- **Terminal:** Alacritty

## Fenster-Manager
- **WM:** DWM (Dynamic Window Manager)

## Schriftart
- **Schriftart:** JetBrains Mono

## Konfiguration
- Konfigurationen für verschiedene Anwendungen sind in den folgenden Verzeichnissen organisiert:
  - `config/`
    - `alacritty/` (Alacritty Terminal-Konfiguration)
    - `neofetch/` (Neofetch-Konfiguration)
    - `nvim/` (Neovim-Konfiguration)
  - `fonts/` (JetBrains Mono Schriftart und Lizenz)
  - `root/` (Konfigurationsdateien auf Root-Ebene)
  - `suckless/` (Konfigurationen für Suckless-Software)
    - `dmenu/` (Dmenu-Konfiguration)
    - `dwm/` (DWM-Konfiguration)
    - `st/` (Simple Terminal-Konfiguration)

## Installation
1. Führen Sie das bereitgestellte Installations-Skript aus, um die Umgebung einzurichten.
   ```bash
   ./install.sh
   ```
