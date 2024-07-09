#SingleInstance Force

#ifwinactive ahk_exe factorio.exe
{
	*$MButton::
	{
		send {Blind}{LButton}
		sleep 5
		While GetKeyState("MButton", "P")
		{
			If GetKeyState("MButton","P")
			Send  {Blind}{LButton}
			sleep 5
		} 
		return
	}
}