Add-Type -TypeDefinition @"
using System;
using System.Runtime.InteropServices;
public class Keyboard{
    [DllImport("user32.dll")]
    public static extern void keybd_event(byte bVk, byte bScan, uint dwFlags, uint dwExtraInfor);
    public const uint KEYEVENTF_KEYUP = 0x0002;
    public const byte VK_LWIN = 0x5B;
    public const byte VK_V = 0x56;
}
"@
#Start-Sleep -Milliseconds 100
[Keyboard]::keybd_event([Keyboard]::VK_LWIN, 0, 0, 0);
[Keyboard]::keybd_event([Keyboard]::VK_V, 0, 0, 0);
[Keyboard]::keybd_event([Keyboard]::VK_V, 0, [Keyboard]::KEYEVENTF_KEYUP, 0);
[Keyboard]::keybd_event([Keyboard]::VK_LWIN, 0, [Keyboard]::KEYEVENTF_KEYUP, 0);

