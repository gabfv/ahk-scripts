#ifwinactive ahk_class ArenaNet_Dx_Window_Class
{
	$F9::
	{
		MouseGetPos, xpos, ypos
		
		Send {LButton}
		Send {LButton}
		
		MouseMove, 0, 58, 1, R
		
		Send {LButton}
		Send {LButton}
		
		MouseMove, 0, 58, 1, R
		
		Send {LButton}
		Send {LButton}
		
		MouseMove, 0, 58, 1, R
		
		Send {LButton}
		Send {LButton}
		
		MouseMove, 1425, 888, 1
		
		Send {LButton}
		
		MouseMove, xpos, ypos, 1
		
		return
	}
	
	$F10::
	{
		MouseGetPos, xpos, ypos
		
		Send {LButton}
		Send {LButton}
		
		MouseMove, 58, 0, 1, R
		
		Send {LButton}
		Send {LButton}
		
		MouseMove, 58, 0, 1, R
		
		Send {LButton}
		Send {LButton}
		
		MouseMove, 58, 0, 1, R
		
		Send {LButton}
		Send {LButton}
		
		MouseMove, 1425, 888, 1
		
		Send {LButton}
		
		MouseMove, xpos, ypos, 1
		
		return
	}
	
	$F11::
	{
		MouseGetPos, xpos, ypos
		
		Send {LButton}
		Send {LButton}
		
		MouseMove, 58, 0, 1, R
		
		Send {LButton}
		Send {LButton}
		
		MouseMove, 0, 58, 1, R
		
		Send {LButton}
		Send {LButton}
		
		MouseMove, -58, 0, 1, R
		
		Send {LButton}
		Send {LButton}
		
		MouseMove, 1425, 888, 1
		
		Send {LButton}
		
		MouseMove, xpos, ypos, 1
		
		return
	}
}