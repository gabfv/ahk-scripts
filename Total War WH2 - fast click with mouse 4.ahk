#SingleInstance force
#ifwinactive ahk_exe Warhammer2.exe
{
	XButton1::
	{
		sleep 5
		While GetKeyState("XButton1", "P")
		{
			If GetKeyState("XButton1","P")
			{
				MouseClick
				sleep 5
			}
		}
		return
	}
}
