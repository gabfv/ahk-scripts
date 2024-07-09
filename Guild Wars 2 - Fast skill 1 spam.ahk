#ifwinactive Guild Wars
{

	$1::
	{
		sleep 500
		While true
		{
			Send {8}
			sleep 200
			Send {1}
			Send {f}
			if GetKeyState("1","P")
			{
				break
			}
			If !(WinActive("ahk_class ArenaNet_Dx_Window_Class"))
			{
				while true
				{
					sleep 20
					if WinActive("ahk_class ArenaNet_Dx_Window_Class")
					{
						break
					}
				}
			}
		}
		return
	}
	
	$9::
	{
		Send {Enter}
		Send {NumpadDiv}deaths
		Send {Enter}
		return
	}
}