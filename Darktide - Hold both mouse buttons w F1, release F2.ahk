#SingleInstance Force
GroupAdd, Darktide, ahk_exe Darktide.exe

#IfWinActive, ahk_group Darktide
; variable for when the mouse buttons are held down, should be true when down and false up
mouseDown := false
F1::
    Send, {RButton Down}
    Sleep, 1000
    Send, {LButton Down}
    mouseDown := true
    Return

F2::
    Send, {LButton Up}{RButton Up}
    mouseDown := false
    Return

~LButton::
    if (mouseDown) {
        Send, {LButton Down}{RButton Up}
        mouseDown := false
    }
    Return

~RButton::    
    if (mouseDown) {
        Send, {LButton Down}{RButton Up}
        mouseDown := false
    }
    Return
