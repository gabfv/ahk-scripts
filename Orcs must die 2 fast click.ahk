#ifwinactive Orcs Must Die 2
{

$MButton::
{
send {LButton}
sleep 5
While GetKeyState("MButton", "P")
{
If GetKeyState("MButton","P")
Send {LButton}
sleep 5
} 
return
}

}