$f::
{
send {f}
sleep 1
While GetKeyState("f", "P")
{
If GetKeyState("f","P")
Send {f}
Send {LButton}
Send {LButton}
Send {LButton}
sleep 1
} 
return
}