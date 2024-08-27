#Requires AutoHotkey v2.0

MouseWrapper(Fun) {
    MouseGetPos &initial_mouse_pos_x, &initial_mouse_pos_y
    Fun()
    Sleep 50
    MouseMove initial_mouse_pos_x, initial_mouse_pos_y
}
