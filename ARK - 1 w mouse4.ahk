#SingleInstance force

#ifwinactive ahk_exe ShooterGame.exe
{
	$XButton1::
	{
		send {1}
		return
	}
}
