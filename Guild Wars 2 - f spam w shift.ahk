#ifwinactive Guild Wars 2
{
	$LShift::
	{
		While true
		{
			ifwinactive Guild Wars 2
			{
				if GetKeyState("LShift", "P") = 1
				{
					Send {f}
					sleep 450
				}
			}
		}
		return
	}
}