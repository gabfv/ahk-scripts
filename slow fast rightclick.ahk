$F11::
{
send {RButton}
sleep 100
While GetKeyState("F11", "P")
{
If GetKeyState("F11","P")
Send {RButton}
sleep 100
} 
return
}