#SingleInstance force

#ifwinactive Guild Wars 2 
{

	~Ctrl::
	{
		WinWait Guild Wars 2
		ifwinactive Guild Wars 2
		{
			while GetKeyState("Ctrl", "P") = 1
			{
				Send {1}
				sleep 250
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