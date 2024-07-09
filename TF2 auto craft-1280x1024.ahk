	$F11::
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
				sleep 400
				Click rel -380 0
				sleep 400
				Click rel 540 0
				sleep 400
				Click rel -540 0
				sleep 400
				Click rel 690 0
				sleep 400
				Click rel -690 0
				sleep 400
				Click rel 540 480
				sleep 1400
				send {Enter}
				sleep 333
				send {Enter}
				MouseMove, -160, -480, 2, R
				sleep 400
			}
		}
	}