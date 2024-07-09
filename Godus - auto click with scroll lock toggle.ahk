#ifwinactive ahk_class MainWndClass
{
	~ScrollLock::
	{
		WinWait ahk_class MainWndClass
		ifwinactive ahk_class MainWndClass
		{
			while GetKeyState("ScrollLock", "T") = 1
			{
				KeySIsDown := GetKeyState("Shift")
				KeyCIsDown := GetKeyState("Control")
				if (KeySIsDown != 1 or KeyCIsDown != 1)
				{
					Send {LButton}
					sleep 75
				}
			}
		}
	}
}