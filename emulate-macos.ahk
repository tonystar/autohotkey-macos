; https://stackoverflow.com/questions/18454895/using-auto-hotkey-to-swap-ctrl-alt-and-implement-ctrl-tab
*tab::
{   if(GetKeyState("LAlt", "P"))
{   Send {LControl up}{Alt down}{tab}
    KeyWait, tab
}else
{   send {tab}
}
return
}
~LAlt Up::
{   send {lalt up}
return
}

LAlt::LCtrl
LCtrl::LAlt

; https://autohotkey.com/board/topic/81886-solved-autohotkey-script-input-language/
^Space::
WinWait, Program Manager,
Send, {ALTDOWN}{SHIFTDOWN}{SHIFTUP}{ALTUP}
return

; "Spotlight"
!Space::Send #s
