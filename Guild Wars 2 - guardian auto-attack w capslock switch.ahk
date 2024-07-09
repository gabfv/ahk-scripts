#ifwinactive ahk_class ArenaNet_Dx_Window_Class
{
	~Capslock::
	{
		WinWait ahk_class ArenaNet_Dx_Window_Class
		ifwinactive ahk_class ArenaNet_Dx_Window_Class
		{
			while GetKeyState("Capslock", "T") = 1
			{
				Send {1}
				Send {F1}
				sleep 450
			}
		}
	}
}