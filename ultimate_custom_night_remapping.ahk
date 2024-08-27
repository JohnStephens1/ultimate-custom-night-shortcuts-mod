;setup
#Requires AutoHotkey v2.0
SendMode "Event"
SetKeyDelay(50, 50)

;variables and constants
window_title := "Ultimate Custom Night"
mask_pos := [650, 1000]
reset_ventilation_pos := [1600, 900]


;helpers
MouseWrapper(Fun) {
    MouseGetPos &initial_mouse_pos_x, &initial_mouse_pos_y
    Fun()
    Sleep 50
    MouseMove initial_mouse_pos_x, initial_mouse_pos_y
}


;game key definitions
ToggleFlashlight() {
    Send("z")
}

ToggleForwardVent() {
    Send("w")
}

ToggleLeftDoor() {
    Send("a")
}

ToggleMonitor() {
    Send("s")
}

ToggleRightDoor() {
    Send("d")
}

ToggleSideVent() {
    Send("f")
}

CatchFish() {
    Send("c")
}

CloseAd() {
    Send("Enter")
}

ToggleDeskFan() {
    Send("Space")
}


;bonus
PutOnMask() {
    TempFun() {
        MouseMove(mask_pos[1], mask_pos[2], 0)
    }

    MouseWrapper(TempFun)
}

ResetVentilation() {
    TempFun() {
        Click(reset_ventilation_pos*)
    }

    MouseWrapper(TempFun)
}


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


+Escape:: {
    Suspend()
}

^Escape:: {
    ExitApp()
}
