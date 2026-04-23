```md
# Windhawk Configuration Guide

This guide explains how to configure Windhawk for notification bar, action menu, start menu, and taskbar customization.

---

# What is Windhawk

Windhawk is a Windows customization and modding platform that allows you to modify the behavior and appearance of Windows components using community-created mods. It works by injecting small modifications into Windows processes, allowing deep customization without replacing system files.

Windhawk can be used to modify:
- Taskbar appearance and size
- Start menu appearance and layout
- Notification center styling
- Action center position
- Window behavior
- Explorer behavior
- UI themes and transparency effects

Windhawk mods can be configured individually through their Advanced settings using JSON configuration snippets.

---

# Required Mods

For this setup, install the following Windhawk mods:

- Shell Flyout Positions
- Taskbar Height and Icon Size
- Windows 11 Notification Center Styler
- Windows 11 Start Menu Styler
- Windows 11 Taskbar Styler (Optional, if keeping taskbar visible)

---

# How to Configure Windhawk Mods

For each mod:

1. Install the mod from Windhawk
2. Enable the mod
3. Open the mod settings
4. Go to the **Advanced** tab
5. Paste the provided JSON snippet into the **Mod settings** field
6. Save and apply
7. Restart Explorer if required

---

# Mod Configurations

## Shell Flyout Positions

This controls the position of:
- Notification Center
- Action Center
- Start Menu

Paste the following into the mod settings:

```

{
"notificationCenter.horizontalAlignment": "right",
"notificationCenter.horizontalShift": 0,
"actionCenter.horizontalAlignment": "center",
"actionCenter.horizontalShift": 0,
"startMenu.horizontalAlignment": "left",
"startMenu.horizontalShift": -9,
"startMenu.verticalAlignment": "top",
"startMenu.verticalShift": -385
}

```

This configuration:
- Moves notification center to the right
- Centers the action center
- Moves start menu to the top-left area
- Adjusts offsets for alignment with custom bars

---

## Taskbar Height and Icon Size

This controls:
- Taskbar height
- Icon size
- Taskbar button width

Paste the following into the mod settings:

```

{
"TaskbarHeight": 1,
"IconSize": 16,
"TaskbarButtonWidth": 44,
"IconSizeSmall": 16,
"TaskbarButtonWidthSmall": 32
}

```

This configuration creates a compact taskbar with smaller icons.

---

## Windows 11 Notification Center Styler

This controls the appearance/theme of the notification center.

Paste the following into the mod settings:

```

{
"theme": "WindowGlass_variant_alternative",
"controlStyles[0].target": "",
"controlStyles[0].styles[0]": "",
"styleConstants[0]": "",
"themeResourceVariables[0]": ""
}

```

This applies a glass-style theme to the notification center.

---

## Windows 11 Start Menu Styler

This controls the appearance of the start menu, including acrylic and mica effects.

Paste the following into the mod settings:

```

{
"theme": "LayerMicaUI",
"disableNewStartMenuLayout": "",
"styleConstants[0]": "",
"themeResourceVariables[0]": "",
"webContentStyles[0].target": "",
"webContentStyles[0].styles[0]": "",
"webContentCustomJs": "",
"controlStyles[0].styles[0]": "Background:=<AcrylicBrush BackgroundSource="Backdrop" TintColor="Violet" TintOpacity="0.25" />",
"controlStyles[0].target": "Border#AcrylicBorder"
}

```

This configuration:
- Applies Mica/Acrylic styling
- Adds violet tinted acrylic background
- Creates a translucent themed start menu

---

## Windows 11 Taskbar Styler (Optional)

Use this if you plan to keep the taskbar visible while maintaining a cohesive theme.

Paste the following into the mod settings:

```

{
"theme": "WindowGlass",
"controlStyles[0].target": "",
"controlStyles[0].styles[0]": "",
"styleConstants[0]": "",
"resourceVariables[0].variableKey": "",
"resourceVariables[0].value": ""
}

```

This applies a glass theme to the taskbar.

---

# Notes

- Restart Explorer after applying major style changes
- Some themes may require Windows transparency effects enabled
- Mods can conflict if multiple mods modify the same UI component
- Apply and test mods one at a time
- Keep a backup of your mod settings
- Windhawk updates may reset or break some mods

---
```
