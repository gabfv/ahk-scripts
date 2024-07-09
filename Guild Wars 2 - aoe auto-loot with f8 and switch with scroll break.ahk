#ifwinactive Guild Wars 2
{
	~ScrollLock::
	{
		WinWait Guild Wars 2
		ifwinactive Guild Wars 2
		{
			while GetKeyState("ScrollLock", "T") = 1
			{
				KeySIsDown := GetKeyState("Shift")
				KeyCIsDown := GetKeyState("Control")
				if (KeySIsDown != 1 or KeyCIsDown != 1)
				{
					Send {F8}
					sleep 300
				}
			}
		}
	}
}