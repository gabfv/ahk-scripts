#SingleInstance force
#ifwinactive Subnautica
{
	XButton1::
	{
		send {LButton}
		sleep 5
		While GetKeyState("XButton1", "P")
		{
			If GetKeyState("XButton1","P")
			{
				Send {LButton}
				sleep 5
			}
		}
		return
	}
	
	PgUp::
	{
		send {w down}
		sleep 5
		While GetKeyState("PgUp", "P")
		{
			If GetKeyState("PgUp","P")
			{
				Send {w down}
				sleep 5
			}
		}
		Send {w up}
		return
	}
	
	PgDn::
	{
		send {s down}
		sleep 5
		While GetKeyState("PgDn", "P")
		{
			If GetKeyState("PgDn","P")
			{
				Send {s down}
				sleep 5
			}
		}
		Send {s up}
		return
	}
}
