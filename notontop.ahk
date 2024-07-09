{	
	$F11::
		WinGet, active_id, ID, A
		sleep 100
		WinSet, AlwaysOnTop, Off, ahk_id %active_id%	; set off always-on-top.
		Return
}
