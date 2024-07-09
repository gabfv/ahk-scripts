#SingleInstance force
#ifwinactive Grand Theft Auto V
{
	While true
	{
		ifwinactive Grand Theft Auto V
		{
			if GetKeyState("ScrollLock", "T") = 1
			{
				Send {w down}
				Send {a down}
			}
		}
	}
}