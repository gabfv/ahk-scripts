#SingleInstance force
GroupAdd, Vermintide2, ahk_exe vermintide2_dx12.exe

#ifwinactive ahk_group Vermintide2
{
	F11:: ; Auto re-roll properties, trait, etc
	{
		WinGetPos, WinX, WinY, WinW, WinH, ahk_group Vermintide2		; Get the window position
		MouseGetPos, MouseXPrevPosition, MouseYPrevPosition ; Original mouse postion
		
		; Double-click the item
		send {LButton}
		sleep 20
		send {LButton}
		
		; Calculate the re-roll button position
		ReRollButtonX := WinW / 2
		ReRollButtonY := WinH * 0.75
		
		; Move and click on the re-roll button
		MouseMove, %ReRollButtonX%, %ReRollButtonY%, 2
		sleep 100
		Send {LButton Down}
		sleep 1000
		Send {LButton Up}
		
		; Move back to the original position
		MouseMove, %MouseXPrevPosition%, %MouseYPrevPosition%, 2
		
		return
	}
}
