using System;
using System.Runtime.InteropServices;

class Program {
    [DllImport("user32.dll")]
    public static extern void keybd_event(byte bVk, byte bScan, uint dwFlags, uint dwExtraInfor);
     static void Main() {
        keybd_event(0x5B, 0, 0, 0);
        keybd_event(0x56, 0, 0, 0);
        keybd_event(0x56, 0, 2, 0);
        keybd_event(0x5B, 0, 2, 0);
     }
}