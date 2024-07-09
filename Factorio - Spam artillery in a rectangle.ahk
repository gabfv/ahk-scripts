#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force

#ifwinactive ahk_exe factorio.exe
{
	MButton::
	{
		stop := 1
		Return
	}

	XButton2::
	{
		CoordMode, Mouse, Screen
		MouseGetPos x1, y1
		Return
	}

	XButton1::
	{
		CoordMode, Mouse, Screen	
		stop := 0
		MouseGetPos x2,y2
		i := x1
		Loop {
			if (stop == 1 or not WinActive("ahk_exe factorio.exe"))
			{
				break
			}
			if (i > x2)
			{
			
				break
			}
			j := y1
			Loop {
				Sleep 1
				MouseClick, left, %i%, %j%
				j+=10
				if (j > y2)
				{
					break
				}
				if (stop == 1 or not WinActive("ahk_exe factorio.exe"))
				{
					break
				}
			}
			i+=10		
		}
		Return
	}
}