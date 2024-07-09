#SingleInstance force
#ifwinactive Grand Theft Auto V
{
	F11::
	{
		Loop
		{
			Send {w down}
			sleep 1000
			Send {w up}
			Send {s down}
			sleep 1000
			Send {s up}
		}
		
		return
	}
}