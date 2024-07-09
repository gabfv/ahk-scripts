#SingleInstance force
#ifwinactive ahk_exe knightspp.exe
{
		$F11::
		{
			InputBox, UserInput, Nb 3rd bottom potion, Enter., , 40, 100
			if ErrorLevel
			{
				MsgBox, CANCEL was pressed.
			}
			else
			{
				loop %UserInput%
				{
					Click rel 0 0
					sleep 2
					Click rel 0 -300
					sleep 2
					Click rel 0 40
					sleep 2
					MouseMove, 0, 260, 0, R
					sleep 2
				}
			}
			return
		}
}
Esc::ExitApp ;Escape key will exit... place this at the bottom of the script