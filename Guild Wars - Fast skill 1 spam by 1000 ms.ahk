#ifwinactive Guild Wars
{

	$1::
	{
		sleep 500
		While true
		{
			Send {1}
			sleep 10
			Loop, 100
			{
				sleep 10
				if GetKeyState("1","P")
				{
					break
				}
			}
		} 
		return
	}

}