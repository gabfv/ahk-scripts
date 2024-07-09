#Include %A_ScriptDir%\AHKHID.ahk
Gui, +LastFound
hGui := WinExist()
OnMessage(0xFF, "InputMsg")
AHKHID_Register(12, 1,hGui, RIDEV_INPUTSINK)
return

InputMsg(wParam, lParam) {
    Local d
    devhandle:=AHKHID_GetInputInfo(lParam,II_DEVHANDLE)
    data_code:=AHKHID_GetInputData(lParam, uData)
    if (data_code=5) {
       SendInput {Media_Play_Pause}
    }
    return test
}