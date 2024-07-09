#ifwinactive Elder Scrolls Online
{
	While true
	{
		ifwinactive Elder Scrolls Online
		{
			if GetKeyState("ScrollLock", "T") = 1
			{
				Send {w down}
				sleep Random, rand, 10, 200
				Send {w up}
				sleep Random, rand, 1000, 4000
				Send {s down}
				sleep Random, rand, 10, 200
				Send {s up}
				sleep Random, rand, 1000, 4000
			}
		}
	}
}