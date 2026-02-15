#Requires AutoHotkey v2.0

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
