````md
# YASB Toggle Files Setup Guide

## Overview

This setup allows the **Quick Settings** and **Clipboard** widgets to simulate keystrokes by executing files when clicked.

There are two available setup methods:

### Default Setup (Recommended)
The widgets execute compiled `.exe` files to simulate keystrokes.

### Alternative Setup
The widgets execute **PowerShell scripts** to simulate keystrokes.  
**Note:** This method is slightly slower than using executables.

For convenience, this directory includes:
- Executables (`.exe`)
- PowerShell scripts (`.ps1`)
- C# source files (`.cs`) used to generate the executables

---

# Virtual Keyboard Key Codes

| Key | Hex Value |
|-----|-----------|
| Windows Key | `0x5B` |
| A Key | `0x41` |
| V Key | `0x56` |

---

# Usage Instructions

## 1. Default Settings
No changes are required. The setup should work immediately.

---

## 2. Compile Executables from C# Files

Run the following commands in **PowerShell** from this directory:

```powershell
Add-Type -TypeDefinition (Get-Content toggle-clipboard.cs -Raw) -OutputAssembly %userprofile%\.config\yasb\toggle-files\toggle-clipboard.exe -OutputType ConsoleApplication

Add-Type -TypeDefinition (Get-Content toggle-quicksettings.cs -Raw) -OutputAssembly %userprofile%\.config\yasb\toggle-files\toggle-quicksettings.exe -OutputType ConsoleApplication
````

This will generate the executable files in:

```
%userprofile%\.config\yasb\toggle-files\
```

---

## 3. Use PowerShell Scripts Instead of Executables

If you prefer using PowerShell scripts instead of `.exe` files, modify your configuration file.

### Change Line 271

**Replace:**

```yaml
on_left: "exec %userprofile%\\.config\\yasb\\toggle-files\\toggle-clipboard.exe"
```

**With:**

```yaml
on_left: "exec cmd /c /min powershell -WindowStyle Hidden -NonInteractive -File %userprofile%\\.config\\yasb\\toggle-files\\toggle-clipboard.ps1"
```

---

### Change Line 317

**Replace:**

```yaml
on_left: "exec %userprofile%\\.config\\yasb\\toggle-files\\toggle-quicksettings.exe"
```

**With:**

```yaml
on_left: "exec cmd /c /min powershell -WindowStyle Hidden -NonInteractive -File %userprofile%\\.config\\yasb\\toggle-files\\toggle-quicksettings.ps1"
```

---

## Optional: Execution Policy Fix

If the PowerShell scripts do not run, add the **ExecutionPolicy Bypass** flag:

Example:

```bash
powershell -ExecutionPolicy Bypass -WindowStyle Hidden -NonInteractive -File <script-path>
```

```md
---

# Additional Information

## Security Considerations

### PowerShell Execution Policy
While using PowerShell scripts, using `-ExecutionPolicy Bypass` disables PowerShell security checks. If it is a major concern, prefer using:
```

-ExecutionPolicy RemoteSigned

````
Alternatively, unblock scripts manually:
```powershell
Unblock-File <script.ps1>
````

### Script and Executable Directory Permissions

Since scripts and executables are executed from:

```
%userprofile%\.config\yasb\toggle-files\
```

Ensure the directory is writable only by your user account to prevent unauthorized modification:

```powershell
icacls %userprofile%\.config\yasb\toggle-files /inheritance:r /grant:r "%USERNAME%:F"
```

### Hidden Execution

Scripts are executed with hidden windows. This is normal for background automation, but it may make debugging difficult.
If troubleshooting, temporarily remove:

```
-WindowStyle Hidden
```

---

## Optimization Notes

### Prefer Executables Over PowerShell Scripts

Using compiled `.exe` files is recommended because:

* Faster execution
* No PowerShell startup delay
* No execution policy issues
* More reliable for frequent widget clicks

PowerShell scripts should be considered a fallback option.

### Compile Executables Once

Instead of compiling with PowerShell repeatedly, compile once and keep the executables.
This reduces setup time and avoids unnecessary recompilation.

### Remove Unnecessary cmd Wrapper

If using PowerShell scripts, this:

```
cmd /c /min powershell ...
```

can be simplified to:

```
powershell -WindowStyle Hidden -NonInteractive -File <script>
```

(However, I personally faced some issues which would not run the scripts directly. As such, take caution and use at your own discretion)

### Optional Logging (For Debugging)

If scripts fail silently, add simple logging:

```powershell
Add-Content "$env:USERPROFILE\.config\yasb\log.txt" "$(Get-Date): Script executed"
```

This helps diagnose failures without showing windows.


---

# End

```
```
