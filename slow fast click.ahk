$F12::
{
send {LButton}
sleep 100
While GetKeyState("F12", "P")
{
If GetKeyState("F12","P")
Send {LButton}
sleep 100
} 
return
}