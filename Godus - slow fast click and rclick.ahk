#SingleInstance force
#ifwinactive Godus
{
	$PgUp::
	{
		send {LButton}
		sleep 100
		While GetKeyState("PgUp", "P")
		{
			If GetKeyState("PgUp","P")
				Send {LButton}
			sleep 100
		} 
		return
	}
	$PgDn::
	{
		send {RButton}
		sleep 100
		While GetKeyState("PgDn", "P")
		{
			If GetKeyState("PgDn","P")
				Send {RButton}
			sleep 100
		} 
		return
	}
}