#SingleInstance Force

#ifwinactive ahk_exe factorio.exe
{
	$F1::
	{
		WinActivate ahk_exe factorio.exe
		WinWaitActive ahk_exe factorio.exe
		
		CoordMode, Mouse, Window
		
		Lines := 4
		Columns := 10
		
		CoordX := 1260
		StartingCoordX := 1260
		CoordY := 550
		LineHeight := 110 / (Lines - 1)
		ColumnWidth := 340 / (Columns - 1)
	
		Loop %Lines%
		{
			Loop %Columns%
			{
				Click Middle, %CoordX%, %CoordY%
				sleep 50
				
				CoordX := CoordX + ColumnWidth
			}
			
			CoordY := CoordY + LineHeight
			CoordX := StartingCoordX
		}
	}
	
	return
}