#Include %A_ScriptDir%\AHKHID.ahk
Gui, +LastFound
hGui := WinExist()
OnMessage(0xFF, "InputMsg")
AHKHID_Register(12, 1,hGui, RIDEV_INPUTSINK)
Gui,Setup:Add,Text,,Press a button on your secondary keyboard.  ; ! = you can delete/comment this line once you are done
Gui,Setup:Add,Text,,DEVHANDLE: ; !
Gui,Setup:Add,Edit,vDevHandle ReadOnly , ; !
Gui,Setup:Add,Text,,DATA: ; !
Gui,Setup:Add,Edit,vDATA ReadOnly h300, ; !
Gui,Setup:Show ; !
return

InputMsg(wParam, lParam) {
    Local d
    devhandle:=AHKHID_GetInputInfo(lParam,II_DEVHANDLE)
    data_code:=AHKHID_GetInputData(lParam, uData)
    temp.=data_code "`n" ; !
    GuiControl,Setup:,DATA,%temp% ; !
    GuiControl,Setup:,DevHandle,%devhandle% ; !
    if (devhandle=YOUR_DEVHANDLEHERE) AND (data_code=YOUR_DATACODEHERE) {
        MsgBox It works! ; !
       ;SendInput {Media_Play_Pause}
    }
    return test
}