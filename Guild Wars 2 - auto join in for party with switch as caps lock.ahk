#SingleInstance force
#ifwinactive ahk_class ArenaNet_Dx_Window_Class
{
	~Capslock::
	{
		WinWait ahk_class ArenaNet_Dx_Window_Class
		ifwinactive ahk_class ArenaNet_Dx_Window_Class
		{
			while GetKeyState("Capslock", "T") = 1
			{
				Click right
				sleep 180
				MouseMove, 25, 85, 2, R
				sleep 70
				Click left
				sleep 420
				send {Enter}
				MouseMove, -25, -85, 2, R
				sleep 150
			}
		}
	}
}