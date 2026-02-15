#Requires AutoHotkey v2.0
; shift-ime-ahk.ahk
;
; 左 Shift キーに『無変換』を、右 Shift キーに『変換』を割り当てるスクリプト
; Shift キーを単独で押したとき、かつ 200 ミリ秒未満で離したときのみ発動する

~LShift::
{
    KeyWait "LShift"
    if (A_TimeSinceThisHotkey < 200 && A_PriorKey = "LShift") {
        Send "{vk1Dsc07B}" ; 無変換
    }
}

~RShift::
{
    KeyWait "RShift"
    if (A_TimeSinceThisHotkey < 200 && A_PriorKey = "RShift") {
        Send "{vk1Csc079}" ; 変換
    }
}
