#ifwinactive Guild Wars 2 
{

	LAlt::
	{
		Loop
		{
			WinWait Guild Wars 2
			ifwinactive Guild Wars 2
			{
				if GetKeyState("LAlt", "P") = 1
				{
					Send {1}
					Send {F1}
					sleep 250
				}
			}
		}
		return
	}
}