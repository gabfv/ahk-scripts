#SingleInstance force
#ifwinactive Grand Theft Auto V
{
	While true
	{
		ifwinactive Grand Theft Auto V
		{
			if GetKeyState("ScrollLock", "T") = 1
			{
				Send {w down}
				Send {LShift down}
				MouseMove 0,1, 1, R
				MouseMove 1,0, 1, R
				Send {w up}
				Send {LShift up}
				sleep 2000
				MouseMove 0,-2, 1, R
				Send {w down}
				Send {LShift down}
				sleep 300
				Send {w up}
				Send {LShift up}
			}
		}
	}
	return
}

$F5::
	MouseMove 0,100, 1, R
	sleep 150
	return

$F6::
	MouseMove 0,-100, 1, R
	sleep 150
	return
	
$F7::
	MouseMove 100,0, 1, R
	sleep 150
	return

$F8::
	MouseMove -100,0, 1, R
	sleep 150
	return
	
#ifwinactive