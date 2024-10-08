﻿#Requires AutoHotkey v2.0
#Include resources\game_actions.ahk
#Include util\script_controls.ahk

SendMode "Event"
SetKeyDelay(50, 50)

window_title := "Ultimate Custom Night"


; key assignents
; uncomment this and modify keys / functions if you want to use tab as a hotkey
; #HotIf WinActive(window_title) and not GetKeyState("Alt")
; Tab::Enter
; #HotIf

#HotIf WinActive(window_title)
; doors
a::ToggleLeftDoor()
d::ToggleRightDoor()

; vents
y::ToggleForwardVent()
z::ToggleForwardVent()
f::ToggleSideVent()

; other
s::ToggleFlashlight()
w::ToggleMonitor()
Space::ToggleDeskFan()

; random
c::CatchFish()
q::CloseAd()

; bonus
SendMode "Input"
SetMouseDelay(0)
e::ToggleMask()
r::ResetVentilation()

+1::EnterCamSystem()
+2::EnterVentSystem()
+3::EnterDuctSystem()
SendMode "Event"
#HotIf
