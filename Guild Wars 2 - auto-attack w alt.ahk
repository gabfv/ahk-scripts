#ifwinactive ahk_class ArenaNet_Dx_Window_Class
{

	$LAlt::
	{
		Loop
		{
			WinWait ahk_class ArenaNet_Dx_Window_Class
			ifwinactive ahk_class ArenaNet_Dx_Window_Class
			{
				if GetKeyState("LAlt", "P") = 1
				{
					Send {1}
					sleep 250
				}
			}
		}
		return
	}
}