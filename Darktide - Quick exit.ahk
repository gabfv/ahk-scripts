#Requires AutoHotkey v2.0
#SingleInstance Force
GroupAdd "Darktide", "ahk_exe Darktide.exe"

#HotIf WinActive("ahk_group Darktide")
F11::
{
    ProcessClose "Darktide.exe"
}