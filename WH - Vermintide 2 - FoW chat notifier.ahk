#SingleInstance Force
#Persistent

GroupAdd, Vermintide, ahk_exe vermintide2_dx12.exe
GroupAdd, Vermintide, ahk_exe vermintide.exe

global NoWaveMessage := 0 ; arrays in autohotkey start at 1 so it should be incremented before a message is displayed
global MaxNoWaveMessage := 44 ;
global IsNewMessagePending = 0 ; If there is a new message pending
global WaveMessages := ["Wave 1 summary: 3 gunners THEN 2 packmasters THEN 10 stormvermins","3 gunners (80 sec or fewer than 8 enemies)","2 packmasters (80 sec or fewer than 8 enemies)","10 stormvermins (Incoming RESPAWN at the end) (100 sec or fewer than 3 enemies)","Wave 2 summary: trash mobs THEN 5 globadiers + 6 CWs THEN trash mobs THEN 1 chaos spawn + 5 packmasters","5 globadiers + 6 CWs (80 sec or fewer than 2 enemies)","1 chaos spawn + 5 packmasters (Incoming RESPAWN at the end) (120 sec or 0 enemies)","Wave 3 summary: 10 gutter runners THEN trash mobs THEN 16 stormvermins THEN 4 stormers THEN 10 berzerkers","10 gutter runners (80 sec or fewer than 4 enemies)","16 stormvermins (80 sec or fewer than 10 enemies)","4 stormers (80 sec or fewer than 8 enemies)","10 berzerkers (Incoming RESPAWN at the end) (120 sec or fewer than 3 enemies)","Wave 4 summary: 4 maulers THEN 10 CWs + 6 leeches THEN 6 gunners THEN 12 stormvermins + 2 packmasters","4 maulers (80 sec or fewer than 20 enemies)","10 CWs + 6 leeches (80 sec or fewer than 5 enemies)","6 gunners (80 sec or fewer than 6 enemies)","12 stormvermins + 2 packmasters (Incoming RESPAWN at the end) (100 sec or 0 enemies)","Wave 5 summary: 6 flamers + 16 plaguemonks THEN STORMFIEND + 4 globadiers THEN 8 packmasters THEN 8 stormvermins","6 flamers + 16 plaguemonks (80 sec or fewer than 8 enemies)","STORMFIEND + 4 globadiers (80 sec or fewer than 5 enemies)","8 packmasters (80 sec or fewer than 5 enemies)","8 stormvermins (Incoming RESPAWN at the end) (160 sec or 0 enemies)","Wave 6 summary: 18 plaguemonks THEN 26 stormvermins + 4 globadiers THEN 4 gutter runners THEN 12 maulers + 8 gunners THEN trash mobs","18 plaguemonks (100 sec or fewer than 8 enemies)","26 stormvermins + 4 globadiers (80 sec or fewer than 5 enemies)","4 gutter runners (80 sec or fewer than 3 enemies)","12 maulers + 8 gunners (80 sec or fewer than 10 enemies)","trash mobs (Incoming RESPAWN at the end) (120 sec or fewer than 3 enemies)","Wave 7 summary: 4 stormvermins + 2 packmasters + 2 leeches THEN 2 stormers THEN 16 plaguemonks THEN 12 stormvermins + 8 globadiers THEN 20 CWs + 7 stormers","4 stormvermins + 2 packmasters + 2 leeches (80 sec or fewer than 10 enemies)","2 stormers (80 sec or fewer than 10 enemies)","16 plaguemonks (80 sec or fewer than 5 enemies)","12 stormvermins + 8 globadiers (80 sec or fewer than 2 enemies)","20 CWs + 7 stormers (Incoming FINAL RESPAWN at the end) (180 sec or fewer than 2 enemies)","FINAL wave summary: TROLL + RAT OGRE + 4 CWs + 4 maulers THEN 3 gutter runners THEN 3 packmasters + 8 maulers + 12 berzerkers THEN 2 CWs + 2 maulers + 4 globadiers THEN RAT OGRE + 20 stormvermins + 3 gunners + 2 packmasters THEN 10 plaguemonks + 2 gutter runners + 1 gunner + 1 globadier THEN 16 stormvermins + 8 maulers + 4 flamers + 5 CWs + 2 stormers + 3 leeches THEN trash mobs THEN 10 CWs","TROLL + RAT OGRE + 4 CWs + 4 maulers (160 sec or fewer than 5 enemies)","3 gutter runners (160 sec or fewer than 5 enemies)","3 packmasters + 8 maulers + 12 berzerkers (160 sec or fewer than 5 enemies)","2 CWs + 2 maulers + 4 globadiers (160 sec or fewer than 5 enemies)","RAT OGRE + 20 stormvermins + 3 gunners + 2 packmasters (160 sec or fewer than 5 enemies)","10 plaguemonks + 2 gutter runners + 1 gunner + 1 globadier (160 sec or fewer than 5 enemies)","16 stormvermins + 8 maulers + 4 flamers + 5 CWs + 2 stormers + 3 leeches (160 sec or fewer than 10 enemies)","trash mobs (160 sec or fewer than 5 enemies)","10 CWs (LAST WAVE)"]

#ifwinactive ahk_group Vermintide
{
	; Next message
	NumpadSub::
	{
		if (NoWaveMessage < MaxNoWaveMessage)
		{
			NoWaveMessage++
		}
		else
		{
			ResetWaveMessage()
		}
		
		OpenChat()
		SendWaveMessage(NoWaveMessage)
		CloseChat()	
		
		return
	}
	
	; Previous message
	NumpadMult::
	{
		if (NoWaveMessage > 1)
		{
			NoWaveMessage--
			OpenChat()
			SendWaveMessage(NoWaveMessage)
			CloseChat()
		}
		
		return
	}
	
	; Reset messages
	NumpadDiv::
	{
		ResetWaveMessage()
		return
	}
	
}

OpenChat()
{
	Send {y}
	sleep 3
	return
}

CloseChat()
{
	Send {Enter}
	sleep 3
	return
}

ResetWaveMessage()
{
	NoWaveMessage := 0
	return
}

SendWaveMessage(indexMessage)
{
	
	SendRaw % WaveMessages[indexMessage]
	sleep 3
	return
}