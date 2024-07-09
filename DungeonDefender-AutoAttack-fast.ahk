#ifwinactive Dungeon Defenders
{

$LButton::
{
send {LButton}
sleep 20
While GetKeyState("LButton", "P")
{
If GetKeyState("LButton","P")
Send {LButton}
sleep 20
} 
return
}
$RButton::
{
send {RButton}
sleep 20
While GetKeyState("RButton", "P")
{
If GetKeyState("RButton","P")
Send {RButton}
sleep 20
} 
return
}
return
}