$F12::
{
send {RButton}
sleep 1
While GetKeyState("F12", "P")
{
If GetKeyState("F12","P")
Send {RButton}
sleep 1
} 
return
}