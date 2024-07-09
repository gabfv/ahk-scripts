#ifwinactive ahk_exe ShooterGame.exe
{
$XButton1::
{
send {e}
sleep 5
While GetKeyState("XButton1", "P")
{
If GetKeyState("XButton1","P")
Send {e}
sleep 5
} 
return
}
}
