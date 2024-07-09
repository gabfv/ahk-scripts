~ScrollLock::
{
	while GetKeyState("ScrollLock", "T") = 1
	{
		Send {LButton}
	}
}