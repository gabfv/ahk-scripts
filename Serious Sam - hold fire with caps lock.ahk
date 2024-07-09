#ifwinactive Serious Sam
{
	bActive := 0
	Loop
	{
		WinWait Serious Sam
		ifwinactive Serious Sam
		{
			if (GetKeyState("Capslock", "T") = 1)
			{
				if bActive < 1
				{
					Click Down
					bActive =: 1
				}
			}
			if (GetKeyState("Capslock", "T") = 0)
			{
				if bActive > 0
				{
					Click Up
					bActive := 0
				}
			}
		}
		sleep 200
	}
}