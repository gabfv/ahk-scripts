#MaxHotkeysPerInterval 9000
#SingleInstance force

^!Numpad1::
Loop 1000
{
	Send {Space down}
	Sleep 10
	Send {Space up}
}
