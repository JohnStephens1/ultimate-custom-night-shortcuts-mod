#Requires AutoHotkey v2.0
#Include resources\game_actions.ahk
#Include util\script_controls.ahk

SendMode "Event"
SetKeyDelay(50, 50)


window_title := "Ultimate Custom Night"


;key assignent
#HotIf WinActive(window_title) and not GetKeyState("Alt")
Tab::Enter
#HotIf

#HotIf WinActive(window_title)
y::z
q::w
$w::s
e::PutOnMask()
r::ResetVentilation()
#HotIf
