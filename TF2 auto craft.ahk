#SingleInstance Force

$F12::
{
	InputBox, UserInput, Nb metal, Enter., , 40, 100
	if ErrorLevel
	{
		MsgBox, CANCEL was pressed.
	}
	else
	{
		loop %UserInput%
		{
			Click rel 0 0
			sleep 40
			Click rel -545 0
			sleep 40
			Click rel 425 0
			sleep 40
			Click rel -425 0
			sleep 40
			Click rel 305 0
			sleep 40
			Click rel -305 0
			sleep 40
			Click rel 425 360
			sleep 2000
			Click rel -180 -160
			sleep 40
			Click rel 250 235
			MouseMove, 50, -435, 2, R
			sleep 40
		}
	}
}