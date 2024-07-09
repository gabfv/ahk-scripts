#SingleInstance force

#ifwinactive ahk_exe ShooterGame.exe
{
	$XButton2::
	{
		send {Up}
		sleep 10
		send {Enter}
		While GetKeyState("XButton2", "P")
		{
			If GetKeyState("XButton2","P")
			{
				send {Up}
				sleep 10
				send {Enter}
			}
		} 
		return
	}
}