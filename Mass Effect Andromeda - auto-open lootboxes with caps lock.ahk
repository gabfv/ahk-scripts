#SingleInstance force
#ifwinactive ahk_exe MassEffectAndromeda.exe
{
	~Capslock::
	{
		WinWait ahk_exe MassEffectAndromeda.exe
		ifwinactive ahk_exe MassEffectAndromeda.exe
		{
			while GetKeyState("Capslock", "T") = 1
			{
				Send {Space down}
				sleep 100
				Send {Space up}
				sleep 100
				Send {Space down}
				sleep 100
				Send {Space up}
				sleep 4500
				Send {Escape down}
				sleep 100
				Send {Escape up}
				sleep 100
			}
		}
	}
}