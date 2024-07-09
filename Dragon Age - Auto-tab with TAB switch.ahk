#ifwinactive ahk_class DragonAge
{
bActive := false

	$TAB::
	{
		WinWait ahk_class DragonAge
		ifwinactive ahk_class DragonAge
		{
			if !(bActive)
			{
				Send {TAB DOWN}
				bActive := !bActive
			}
			else
			{
				Send {TAB UP}
				bActive := !bActive
			}
		}
		return
	}
}