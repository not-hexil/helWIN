```md
# WHKD Configuration Guide (whkdrc)

This guide explains how to configure keybinds in the `whkdrc` file, including how to launch custom applications such as Zen Browser, Discord, and other programs.

---

# Basic Keybind Syntax

The basic format in `whkdrc` is:

```

keybind : command

```

Example:
```

ctrl + alt + b : zen.lnk

```

---

# Launching Custom Applications

There are two ways to launch custom applications from `whkdrc`.

## Method 1 (Recommended): Use System PATH

This method allows you to launch applications using only the shortcut or executable name.

### Steps

1. Locate the application executable or shortcut.
   Examples:
   - Zen Browser shortcut (`zen.lnk`)
   - Discord shortcut (`Discord.lnk`)
   - Any application executable (`app.exe`)

2. Move the shortcut (`.lnk`) or executable to a permanent folder such as:
```

%userprofile%\AppData\Local\Programs\

```

3. Add that folder to your system PATH:
   - Open Start Menu
   - Search for **Environment Variables**
   - Open **Edit the system environment variables**
   - Click **Environment Variables**
   - Under **User variables**, select **Path**
   - Click **Edit**
   - Click **New**
   - Add the folder path where your shortcuts/executables are stored
   - Click OK on all windows

Alternatively, you can add respective applications' directories to the system PATH individually. However, moving them all to a dedicated folder is cleaner.

4. Restart your terminal and reload WHKD.

5. You can now use keybind commands like:
```

ctrl + alt + z : zen.lnk
ctrl + alt + d : Discord.lnk
ctrl + alt + a : app.exe

```

This is the preferred method because it keeps the configuration clean and portable.

---

## Method 2: Use Full Executable Path

If you do not want to add the application to PATH, you must launch it using the full path.

### Format
```

keybind : start path/to/your/executable/executable.exe

```

### Examples
```

ctrl + alt + z : start C:\Program Files\Zen Browser\zen.exe
ctrl + alt + d : start %userprofile%\AppData\Local\Discord\Update.exe
ctrl + alt + a : start D:\Apps\SomeApp\app.exe

```

If the path contains spaces, use quotes:
```

ctrl + alt + z : start "" "C:\Program Files\Zen Browser\zen.exe"

```

---

# Notes

- Using system PATH is cleaner and easier to maintain.
- Using full paths is more reliable if the application location may change.
- Shortcuts (`.lnk`) can be used instead of `.exe`.
- If a keybind does not work, try running the command manually in Command Prompt first.
- After editing `whkdrc`, reload WHKD for changes to take effect.

---
```
