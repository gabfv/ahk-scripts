#SingleInstance force

#ifwinactive ahk_exe ShooterGame.exe
{
	$XButton1::
	{
		send {1}
		sleep 10
		send {LButton}
		return
	}
}
