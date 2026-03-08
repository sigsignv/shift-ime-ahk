#Requires AutoHotkey v2.0
; shift-ime-ahk.ahk
;
; 左 Shift キーに `無変換` を、右 Shift キーに `変換` を割り当てるスクリプト
; Shift キーを単独で押したとき、かつ 300 ミリ秒未満で離したときのみ発動する

OnShortPress(keyName, actionKey, timeout := 300)
{
    ; キーを離すまで待機する
    KeyWait keyName

    ; キーを離すまでに timeout ミリ秒以上経過していたら
    if (A_TimeSinceThisHotkey >= timeout) {
        return
    }

    ; 最後に押されたキーが keyName でなければ
    if (A_PriorKey != keyName) {
        return
    }

    Send actionKey
}

; 左 Shift => 無変換 {vk1Dsc07B}
~LShift:: OnShortPress("LShift", "{vk1Dsc07B}")

; 右 Shift => 変換 {vk1Csc079}
~RShift:: OnShortPress("RShift", "{vk1Csc079}")
