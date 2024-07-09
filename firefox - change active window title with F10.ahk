#SingleInstance force
$F10::
{
	WinGet, id1, ID, A
	InputBox, UserInput, Title, Enter., , 40, 100, , , , , %clipboard%
	if ErrorLevel
	{
		MsgBox, CANCEL was pressed.
	}
	else
	{
		WinSetTitle, ahk_id %id1%, ,%UserInput%
		MsgBox, Title was changed to %UserInput%.
	}
}