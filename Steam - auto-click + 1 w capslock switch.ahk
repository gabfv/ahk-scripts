#SingleInstance Force

#ifwinactive ahk_exe Steam.exe
{
	~Capslock::
	{
		WinWait ahk_exe Steam.exe
		ifwinactive ahk_exe Steam.exe
		{
			while GetKeyState("Capslock", "T") = 1
			{
				Send {1}
				Send {2}
				Send {3}
				Send {4}
				Send {5}
				Send {LButton}
				sleep 10
			}
		}
	}
}