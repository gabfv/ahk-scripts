#ifwinactive Dungeon Defenders
{

$LButton::
{
send {LButton}
sleep 200
While GetKeyState("LButton", "P")
{
If GetKeyState("LButton","P")
Send {LButton}
sleep 200
} 
return
}
$RButton::
{
send {RButton}
sleep 200
While GetKeyState("RButton", "P")
{
If GetKeyState("RButton","P")
Send {RButton}
sleep 200
} 
return
}
return
}