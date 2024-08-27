#Requires AutoHotkey v2.0
#Include resources\game_actions.ahk
#Include util\script_controls.ahk


SendMode "Event"
SetKeyDelay(50, 50)


window_title := "Ultimate Custom Night"


;key assignent
; #HotIf WinActive(window_title) and not GetKeyState("Alt")
; Tab::Enter
; #HotIf

#HotIf WinActive(window_title)
;doors
a::ToggleLeftDoor()
d::ToggleRightDoor()

;vents
y::ToggleForwardVent()
f::ToggleSideVent()

;other
s::ToggleFlashlight()
w::ToggleMonitor()
Space::ToggleDeskFan()

;bonus
SendMode "Input"
SetMouseDelay(0)
e::ToggleMask()
r::ResetVentilation()
SendMode "Event"

;random
c::CatchFish()
q::CloseAd()
#HotIf
