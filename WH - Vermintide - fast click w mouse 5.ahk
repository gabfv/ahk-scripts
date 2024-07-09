#SingleInstance force
#ifwinactive ahk_exe vermintide.exe
{
$XButton2::
{
send {LButton}
sleep 5
While GetKeyState("XButton2", "P")
{
If GetKeyState("XButton2","P")
Send {LButton}
sleep 5
} 
return
}
}
