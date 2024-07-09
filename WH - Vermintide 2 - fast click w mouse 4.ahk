#SingleInstance force
GroupAdd, Vermintide, ahk_exe vermintide2_dx12.exe
GroupAdd, Vermintide, ahk_exe vermintide.exe
GroupAdd, Vermintide, ahk_exe vermintide2.exe
GroupAdd, Vermintide, ahk_exe Darktide.exe
#ifwinactive ahk_group Vermintide
{
	*XButton1::
	{
		send {LButton}
		Send {t down}
		sleep 5
		Send {t up}
		While GetKeyState("XButton1", "P")
		{
			If GetKeyState("XButton1","P")
			{
				Send {LButton}
			}
		}
		return
	}
	
	*XButton2::
	{
		send {LButton down}
		sleep 500
		Send {LButton up}
		Send {t down}
		sleep 5
		Send {t up}
		;While GetKeyState("XButton2", "P")
		;{
		;	If GetKeyState("XButton2","P")
		;	{
		;		Send {LButton down}
		;		sleep 450
		;		Send {LButton up}
		;		sleep 50
		;	}
		;}
		;Send {LButton up}
		return
	}
	
	*PgUp::
	{
		send {w down}
		send {Shift down}
		While GetKeyState("PgUp", "P")
		{
			sleep 1
		}
		Send {w up}
		Send {Shift up}
		return
	}
	
	*PgDn::
	{
		send {v down}
		sleep 5
		Send {v up}
		return
	}
}
#ifwinactive