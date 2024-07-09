#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#IfWinActive, F-list

varName := ""
varDesc := ""

$1::
{   
    Clipboard := ""
    Sleep, 125
    Send ^a
    Sleep, 125
    Send ^c
    ClipWait
    varName := Clipboard
    Sleep, 125
    Clipboard := ""
    Send {Tab}
    Sleep, 125
    Send ^a
    Sleep, 125
    Send ^c
    ClipWait
    varDesc := Clipboard
    Clipboard := ""
    Return
}
$2::
{
    Sleep, 125
    SendRaw %varName%
    Sleep, 125
    Send {Tab}
    Sleep, 125
    SendRaw %varDesc%
    Sleep, 125
    Return
}

#IfWinActive