#Persistent
#SingleInstance force
; WARNING : This AutoHotkey must be run with an admin account, because CIGPatcher.exe is run with administrative privileges!!! (Actually not required if you are with Alpha 3.0)
; "C:\Program Files\AutoHotkey\AutoHotkey.exe" "C:\Users\gab2\Documents\Autohotkey scripts\StarCitizen - start update.ahk"

CoordMode, Mouse, Screen
GroupAdd, CIGPatcher, Star Citizen Launcher
GroupAdd, CIGPatcher, ahk_exe RSI PTU Launcher.exe

target_time = 0205 ; 02:05

; Get target time in a format we can:
;  - compare (with "<"), and
;  - use to calculate "time delta" (with EnvSub.)
target = %A_YYYY%%A_MM%%A_DD%%target_time%00

; < comparison should be safe as long as both are in the *exact* same format.
if (target < A_Now)
{   ; time(today) has passed already, so use time(tomorrow)
    EnvAdd, target, 1, d
}

; Calculate how many seconds until the target time is reached.
EnvSub, target, %A_Now%, Seconds


; Sleep until the target is reached.
Sleep, % target * 1000 ; (milliseconds)
	
; Reactivate the netflix window after the file selection dialog.
WinActivate ahk_group CIGPatcher
WinWaitActive, ahk_group CIGPatcher, , 3
if ErrorLevel
{
	TrayTip , CIGPatcher.ahk, Failed to bring the CIGPatcher window to focus!, 2, 3
	MsgBox, CIGPatcher.ahk failed to bring the CIGPatcher window to focus!
}
else
{
	;sleep 1000
	;WinMove, 0, 0
	;sleep 1000
	WinGetPos, WinX, WinY, WinW, WinH, ahk_group CIGPatcher ; Get the window position
	
	; For the setting button
	;MouseX := WinX + 975 
	;MouseY := WinY + 40
	
	; For the update button
	MouseX := WinX + 616 
	MouseY := WinY + 503
	
	Click %MouseX% %MouseY%
	;MouseMove, %MouseX%, %MouseY%, 2
	;TrayTip , CIGPatcher.ahk, Moving to X %MouseX% Y %MouseY% , 2, 3
}
	
ExitApp
