#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
^!.:: ; Ctrl + Alt + . // Activates Script
Loop
{
    If ErrorLevel
        Break
    Else
        Send, {Right}
        Sleep, 150
        Send, ^c
        Sleep, 150
        Send, {Left}
        Sleep, 150
        Send, {Enter}
        Sleep, 150
        Send, {Space}
        Sleep, 150
        Send, ^v
        Sleep, 150
        Send, {Enter}
}
Esc::Exitapp
Pause::Reload
return