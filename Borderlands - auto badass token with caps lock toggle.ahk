#ifwinactive Borderlands
{
	~Capslock::
	{
		WinWait Borderlands
		ifwinactive Borderlands
		{
			while GetKeyState("Capslock", "T") = 1
			{
				MouseMove, 100, 0, 20, R
				
				MouseMove, -100, 0, 20, R
				
			}
		}
	}
}