#SingleInstance force
#Persistent
SetTitleMatchMode, 2
GroupAdd, Cooksmarts, Cook Smarts

global StartingDay := 125
global Offset := 0

#ifwinactive ahk_group Cooksmarts
{
	AppsKey:: 
	{
		; Enter the new URL
		
		Send {Control Down}
		Send {F6}
		Send {Control Up}
		SendNewURL()
		Send {Enter}
		sleep 2000
		
		
		WinGetPos, WinX, WinY, WinW, WinH, ahk_group Cooksmarts		; Get the window position
		MouseGetPos, MouseXPrevPosition, MouseYPrevPosition ; Original mouse postion
		
		; Calculate the screenshot button position
		ScreenshotButtonX := WinW - 350
		ScreenshotButtonY := 52
		
		; Get into screenshot mode
		MouseMove, %ScreenshotButtonX%, %ScreenshotButtonY%, 1
		Sleep 50
		Send {Click}
		
		; Calculate the full page button position
		FullPageButtonX := WinW - 200
		FullPageButtonY := 134
		
		; Move and click on the save full page button
		MouseMove, %FullPageButtonX%, %FullPageButtonY%, 1
		Sleep 500
		Send {Click}
		
		; Click the download button
		Sleep 1500
		Send {Tab}
		Send {Tab}
		Send {Tab}
		Send {Enter}
		
		; Send enter to the download window to save the file
		Sleep 1600
		Send {Enter}
		
		; Move back to the original position
		MouseMove, %MouseXPrevPosition%, %MouseYPrevPosition%, 1
				
		return
	}
	
	RControl:: 
	{
		; Enter the new URL
		
		Send {Control Down}
		Send {F6}
		Send {Control Up}
		SendURL()
		Send {Enter}
		sleep 2000
		
		
		WinGetPos, WinX, WinY, WinW, WinH, ahk_group Cooksmarts		; Get the window position
		MouseGetPos, MouseXPrevPosition, MouseYPrevPosition ; Original mouse postion
		
		; Calculate the screenshot button position
		ScreenshotButtonX := WinW - 350
		ScreenshotButtonY := 52
		
		; Get into screenshot mode
		MouseMove, %ScreenshotButtonX%, %ScreenshotButtonY%, 1
		Sleep 50
		Send {Click}
		
		; Calculate the full page button position
		FullPageButtonX := WinW - 200
		FullPageButtonY := 134
		
		; Move and click on the save full page button
		MouseMove, %FullPageButtonX%, %FullPageButtonY%, 1
		Sleep 500
		Send {Click}
		
		; Click the download button
		Sleep 1500
		Send {Tab}
		Send {Tab}
		Send {Tab}
		Send {Enter}
		
		; Send enter to the download window to save the file
		Sleep 1600
		Send {Enter}
		
		; Move back to the original position
		MouseMove, %MouseXPrevPosition%, %MouseYPrevPosition%, 1
				
		return
	}
}

SendNewURL()
{
	Offset++
	SendURL()
	Send {Del}
	Send {Del}
	return
}

SendURL()
{
	CurrentDay := StartingDay - Offset
	SendRaw https://mealplans.cooksmarts.com/days/
	SendRaw % CurrentDay
	return
}