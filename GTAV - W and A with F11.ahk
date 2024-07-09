#SingleInstance force
#ifwinactive Grand Theft Auto V
{
	F11::
	{
		Loop
		{
			Send {a down}
			sleep 1000
			Send {a up}
			Send {w down}
			sleep 1000
			Send {w up}
		}
		
		return
	}
}