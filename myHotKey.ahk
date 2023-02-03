#Requires AutoHotkey v2.0

; Map Capslock to Control
; Map press & release of Capslock with no other key to Esc
; Press both shift keys together to toggle Capslock

*CapsLock::
{
    Send "{Blind}{LControl down}"
}
*CapsLock up::
{
    Send "{Blind}{LControl up}"
    if A_PRIORKEY = "CapsLock"
    {
        Send "{Esc}"
    }
}

RShift & LShift::
LShift & RShift::
{
    SetCapsLockState !GetKeyState("CapsLock", "T")
}
