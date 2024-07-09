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
		}
		
		return
	}
}