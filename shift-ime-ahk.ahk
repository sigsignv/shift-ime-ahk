#Requires AutoHotkey v2.0
; shift-ime-ahk.ahk
;
; 左 Shift キーに『無変換』を、右 Shift キーに『変換』を割り当てるスクリプト
; Shift キーを単独で押したとき、かつ 300 ミリ秒未満で離したときのみ発動する

OnShortPress(keyName, mappedKey, timeout := 300)
{
    ; KeyWait でキーを離すまで待機する
    KeyWait keyName

    ; A_TimeSinceThisHotkey でキーを離すまでの時間を取得する
    ; A_PriorKey で最後に押されたキーを取得し、Shift キーが単独で押されたかどうかを判断する
    if (A_TimeSinceThisHotkey < timeout && A_PriorKey = keyName) {
        Send mappedKey
    }
}

; {vk1Dsc07B}: 無変換
~LShift:: OnShortPress("LShift", "{vk1Dsc07B}")

; {vk1Csc079}: 変換
~RShift:: OnShortPress("RShift", "{vk1Csc079}")
