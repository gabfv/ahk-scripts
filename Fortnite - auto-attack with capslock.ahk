#SingleInstance force

#ifwinactive Fortnite 
{

;	Capslock::
;	{
		~Capslock::
		{
			WinWait Fortnite
			ifwinactive Fortnite
			{
				while GetKeyState("Capslock", "T") = 1
				{
					Send {LButton}
					sleep 250
				}
			}
		}
		return
;	}
	
;	$F10::
;	{
;		send {LButton}
;		While GetKeyState("F10", "P")
;		{
;			If GetKeyState("F10","P")
;			Send {LButton}
;		} 
;		return
;	}
}