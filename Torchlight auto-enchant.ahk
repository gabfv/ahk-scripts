	$NumpadSub::
	{
		InputBox, UserInput, Nb fois, Enter., , 40, 100
		if ErrorLevel
		{
			MsgBox, CANCEL was pressed.
		}
		else
		{
			loop %UserInput%
			{
				Send {LShift Down}
				Click rel 0 0
				Send {LShift Up}
				sleep 300
				Click rel -553 -101
				sleep 40
				Click rel 325 23
				sleep 40
				Click rel -285 -210
				sleep 40
				MouseMove, 513, 288, 2, R
				sleep 40
				
				;MouseMove, -553, -101, 2, R
				;sleep 4000
				;Click
				;MouseMove, 325, 23, 2, R
				;sleep 4000
				;Click
				;MouseMove, -285, -210, 2, R
				;sleep 4000
				;Click
				;MouseMove, 513, 288, 2, R
				;sleep 40
			}
		}
	}