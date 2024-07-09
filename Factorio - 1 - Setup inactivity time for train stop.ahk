#SingleInstance Force

#ifwinactive ahk_exe factorio.exe
{
	$1::
	{
		WinActivate ahk_exe factorio.exe
		WinWaitActive ahk_exe factorio.exe
		Send +{Home} ; Select everything in the search field.
		send {Delete} ; Delete the text in the search field.
		Send 1
		Send e
		Send o
	}
	
	return
}