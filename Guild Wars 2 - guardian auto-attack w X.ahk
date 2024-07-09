#SingleInstance force

#ifwinactive Guild Wars 2 
{

	x::
	{
		Loop
		{
			WinWait Guild Wars 2
			ifwinactive Guild Wars 2
			{
				if GetKeyState("x", "P") = 1
				{
					Send {1}
					Send {F1}
					sleep 250
				}
			}
		}
		return
	}
	
	$F10::
	{
		send {LButton}
		While GetKeyState("F10", "P")
		{
			If GetKeyState("F10","P")
			Send {LButton}
		} 
		return
	}
}