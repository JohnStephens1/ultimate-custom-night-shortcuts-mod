#Requires AutoHotkey v2.0
#Include ../util/mouse_wrapper.ahk

mask_pos := [650, 1000]
reset_ventilation_pos := [1600, 900]
flashlight_key := "s"


;native
ToggleFlashlight() {
    Send("{z Down}")
    While GetKeyState(flashlight_key, "P")
        Sleep 10
    Send("{z Up}")
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
    Send("{Enter}")
}

ToggleDeskFan() {
    Send("{Space}")
}

;bonus
ToggleMask() {
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
