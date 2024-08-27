#Requires AutoHotkey v2.0

my_screen_dim := [1920, 1080]
current_screen_dim := [A_ScreenWidth, A_ScreenHeight]

Relativy_pos(pos) {
    return [
        pos[1]*current_screen_dim[1]/my_screen_dim[1],
        pos[2]*current_screen_dim[2]/my_screen_dim[2]
    ]
}
