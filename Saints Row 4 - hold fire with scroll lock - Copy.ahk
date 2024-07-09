#ifwinactive Saints Row IV
{
	~ScrollLock::
	{
		WinWait Saints Row IV
		ifwinactive Saints Row IV
		{
			while GetKeyState("ScrollLock", "T") = 1
			{
				Click Down
				sleep 250
			}
		}
	}
}