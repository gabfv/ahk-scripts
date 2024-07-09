#ifwinactive ahk_exe ShooterGame.exe
{
	$XButton1::
	{
		send {f}
		sleep 5
		While GetKeyState("XButton1", "P")
		{
			If GetKeyState("XButton1","P")
			Send {f}
			sleep 5
		} 
		return
	}
}
