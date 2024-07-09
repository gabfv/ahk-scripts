#SingleInstance force
#ifwinactive Grand Theft Auto V
$F5::
	MouseMove 0,100, 1, R
	return

$F6::
	MouseMove 0,-100, 1, R
	return
	
$F7::
	MouseMove 100,0, 1, R
	return

$F8::
	MouseMove -100,0, 1, R
	return
	
#ifwinactive