#SingleInstance force
#ifwinactive Grand Theft Auto V
$F5::
	MouseMove 0,50, 50, R
	return

$F6::
	MouseMove 0,-50, 50, R
	return
	
$F7::
	MouseMove 50,0, 50, R
	return

$F8::
	MouseMove -50,0, 50, R
	return
	
$F9::
	loop
	{
		MouseMove 0,60, 50, R
		sleep 500
		
		; nagez en dessous de l'eau
		Send {w down}
		Send {LShift down}
		sleep 1000
		Send {w up}
		Send {LShift up}
		
		sleep 1000
		MouseMove 80,0, 50, R ; tourner de direction
		
		sleep 20000 ; rester dans l'eau
		
		MouseMove 0,-120, 50, R ; regarder en haut
		sleep 500
		
		; nager en dehors de l'eau
		Send {w down}
		Send {LShift down}
		sleep 2000
		Send {w up}
		Send {LShift up}
		
		MouseMove 0,60, 50, R
		sleep 500
	}
	return
	
#ifwinactive 