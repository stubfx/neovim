; Toggle suspension of hotkeys on F1
#SuspendExempt
F1::Suspend
#SuspendExempt False

; Remap CapsLock to Ctrl
CapsLock::Control  ; Make CapsLock act like the Control (Ctrl) key

; Remap Ctrl + H to Backspace
^h::SendInput("{Backspace}")

; Remap Ctrl + M to Enter
^m::SendInput("{Enter}")

; Remap Ctrl + [ to Escape
^[::SendInput("{Esc}")

; Remap Space + H to Left Arrow
Space & h::SendInput("{Left}")

; Remap Space + N to Down Arrow
Space & n::SendInput("{Down}")

; Remap Space + E to Up Arrow
Space & e::SendInput("{Up}")

; Remap Space + I to Right Arrow
Space & i::SendInput("{Right}")

; Remap Space + J to {
Space & a::SendInput("{{}")   ; Escaped curly braces

; Remap Space + L to [
Space & r::SendInput("[")

; Remap Space + U to ]
Space & s::SendInput("]")

; Remap Space + Y to }
Space & t::SendInput("{}}")   ; Escaped curly braces

; Remap Space + M to -
Space & q::SendInput("-")

; Remap Space + , to =
Space & p::SendInput("=")

Space & f::SendInput("_")

Space & w::SendInput("{+}")

; Ensure Spacebar works as a space when pressed alone
Space::SendInput("{Space}")

