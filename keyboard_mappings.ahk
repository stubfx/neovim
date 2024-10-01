; Remap CapsLock to Ctrl
CapsLock::Control  ; Make CapsLock act like the Control (Ctrl) key

; Remap Ctrl + H to Backspace
^h:: {
    SendInput("{Backspace}")
    SendInput("{Ctrl Up}")
}

; Remap Ctrl + M to Enter
^m:: {
    SendInput("{Enter}")
    SendInput("{Ctrl Up}")
}

; Remap Ctrl + [ to Escape
^[:: {
    SendInput("{Esc}")
    SendInput("{Ctrl Up}")
}

; Remap Alt + H to Left Arrow
!h::SendInput("{Left}")

; Remap Alt + N to Down Arrow
!n::SendInput("{Down}")

; Remap Alt + E to Up Arrow
!e::SendInput("{Up}")

; Remap Alt + I to Right Arrow
!i::SendInput("{Right}")
