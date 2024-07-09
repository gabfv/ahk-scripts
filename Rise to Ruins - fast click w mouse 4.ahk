#SingleInstance force
#ifwinactive Rise to Ruins
{
	XButton1::
	{
		send {LButton}
		sleep 5
		While GetKeyState("XButton1", "P")
		{
			If GetKeyState("XButton1","P")
			{
				Send {LButton}
				sleep 5
			}
		}
		return
	}
}
