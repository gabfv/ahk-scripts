#ifwinactive Guild Wars 2
{
	$LAlt::
	{
		While true
		{
			ifwinactive Guild Wars 2
			{
				if GetKeyState("LAlt", "P") = 1
				{
					Send {1}
					Send {F1}
					sleep 450
				}
			}
		}
		return
	}
	
	$LShift::
	{
		While true
		{
			ifwinactive Guild Wars 2
			{
				if GetKeyState("LShift", "P") = 1
				{
					Send {f}
					Send {LCtrl down}
					sleep 450
					Send {LCtrl up}
				}
			}
		}
		return
	}
}