#SingleInstance force

#m::
{
	Send #d
	Sleep 1000
	SendMessage, 0x112, 0xF170, 2,, Program Manager
	return
}
	
#l::
{
	Send #d
	Sleep, 200
	DllCall("LockWorkStation")
	Sleep, 800
	SendMessage,0x112,0xF170,2,,Program Manager
	return
}