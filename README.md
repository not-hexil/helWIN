# helWIN
A customized theme for Windows using YASB, Komorebi, whkd, Rainmeter, and Windhawk. Inspired by popular themes, with slight customizations.

## Features:
1. **Komorebi** based tiling window management system
2. **YASB** based custom status bar (built upon the theme [YASB 004](https://api.yasb.dev/yasb-themes/themes/0892faae-d929-4c65-8689-4ef1de32f73d/image.png))
3. **WHKD** based keyboard shortcuts
4. **Windhawk** based tweaks for Taskbar, Notification Bar, Start Menu, etc.
5. **Rainmeter** based basic skins
6. Custom scripts/toggler executables for specific commands
7. PowerShell customization using **Oh My Posh** and **Fastfetch**

### Desktop UI Preview
https://github.com/user-attachments/assets/6e9043fd-e71d-4001-b96e-94b237e04ff6

### PowerShell Preview
https://github.com/user-attachments/assets/5557a042-bdc8-4211-95ac-9acd9a8ac884

## System Details:
* **OS:** Windows 11 Pro

## Prerequisites
* [YASB-REBORN (YET ANOTHER STATUS BUS)](https://github.com/amnweb/yasb.git)
* [Komorebi](https://github.com/LGUG2Z/komorebi.git)
* [Windhawk](https://windhawk.net/)
* [Rainmeter](https://www.rainmeter.net/)
* [Fastfetch](https://github.com/fastfetch-cli/fastfetch.git)
* [Oh My Posh](https://ohmyposh.dev/)

## Usage
Create the `.config` folder in your root directory if it doesn't exist already:
```powershell
if (!(Test-Path "%USERPROFILE%\.config")) { New-Item -ItemType Directory -Path "%USERPROFILE%\.config" }
```

Clone the repo:
```powershell
git clone https://github.com/not-hexil/helWIN.git
cd helWIN
```

### Komorebi
Move the contents in the `komorebi` folder to your user profile directory:
```powershell
move .\komorebi\* "%USERPROFILE%\"
```

### YASB
Move the `yasb` folder to the `.config` folder in your root directory:
```powershell
move .\yasb "%USERPROFILE%\.config\"
```

### whkd
Move the contents in the `whkd` folder to the `.config` folder in your root directory:
```powershell
move .\whkd\whkdrc "%USERPROFILE%\.config\"
```

### Windhawk
Follow the documentation provided.

### Custom Toggle Scripts/Executables
Follow the documentation provided.

### Rainmeter
To be updated.

### Powershell
To be updated.

## Acknowledgements:
* **Fastfetch Configuration:** [Gagandeeprai](https://github.com/Gagandeeprai/fastfetch-config.git)
* **Rainmeter Theme and Wallpaper:** (Attempting to find source)

## Disclaimer
The tutorial is provided as is. This was an attempt to personalize my windows experience, and shared as such without any guarantee or liability.