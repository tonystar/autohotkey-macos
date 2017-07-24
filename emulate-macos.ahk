; https://stackoverflow.com/questions/18454895/using-auto-hotkey-to-swap-ctrl-alt-and-implement-ctrl-tab
*Tab::
    if (GetKeyState("LAlt", "P")) {
        Send {LCtrl up}{Alt down}{Tab}
        KeyWait Tab
    } else {
        Send {Tab}
    }
return
~LAlt up::Send {LAlt up}

; Swap Alt<>Ctrl
LAlt::LCtrl
LCtrl::LAlt

; https://autohotkey.com/board/topic/81886-solved-autohotkey-script-input-language/
^Space::
    WinWait, Program Manager
    Send {Alt down}{Shiftdown}{Shiftup}{Alt up}
    ; Note: {Shift down}{Shift up} not working for some crazy reason :'(
return

; "Spotlight"
!Space::Send #s
