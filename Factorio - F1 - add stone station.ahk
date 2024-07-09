#SingleInstance Force

EntranceStationName := "Stone-Entrance-Railyard-0"
ProcessingStationName := "Stone-MegaProcessing-0"

#ifwinactive ahk_exe factorio.exe
{
	$F1::
	{
		InputBox, StationName, StationName to add, Enter., , 40, 100
		if ErrorLevel
		{
			MsgBox, CANCEL was pressed.
		}
		else
		{
			WinActivate ahk_exe factorio.exe
			WinWaitActive ahk_exe factorio.exe
			
			CoordMode, Mouse, Window
		
			; Add the entrance station
			Click 1100, 535 ; Add ("+") button.
			sleep 100
			Send ^f ; For the search field.
			sleep 100
			Send +{Home} ; Select everything in the search field.
			send {Delete} ; Delete the text in the search field.
			Send %EntranceStationName% ; Type the station name.
			sleep 100
			Click 1000, 470 ; Click on the first station found.
			
			; Add the condition : 0 seconds passed.
			sleep 100
			Click 1000, 470 ; Click on the condition "Time passed".
			sleep 100
			Click down 825, 950 ; Click and hold down the left button on the seconds slider.
			sleep 50
			Click up 750, 950 ; Release the mouse where it's 0 seconds.
			sleep 400
			
			; Add the processing station.
			Click 1100, 535 ; Add ("+") button.
			sleep 100
			Send ^f ; For the search field.
			sleep 100
			Send +{Home} ; Select everything in the search field.
			send {Delete} ; Delete the text in the search field.
			Send %ProcessingStationName% ; Type the station name.
			sleep 100
			Click 1000, 470 ; Click on the first station found.
			
			; Add the condition : Inventory empty
			sleep 100
			Click 1000, 530 ; Click on the condition "Inventory empty".
			sleep 100
			
			; Add the stone station that has been entered in the InputBox.
			Click 1100, 535 ; Add ("+") button.
			sleep 100
			Send ^f ; For the search field.
			sleep 100
			Send +{Home} ; Select everything in the search field.
			send {Delete} ; Delete the text in the search field.
			Send %StationName% ; Type the station name.
			sleep 100
			Click 1000, 470 ; Click on the first station found.
			
			; Add the condition : Full inventory
			sleep 100
			Click 1000, 500 ; Click on the condition "Inventory empty".
			sleep 100
			
		}
	}
	
	return
}