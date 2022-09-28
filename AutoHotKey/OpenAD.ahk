#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir C:\Windows\System32  ; Ensures a consistent starting directory.
^!q::
App = dsa.msc
Process, Exist, %App%
if ErrorLevel = 0
{
	run, *RunAs %App%
	Sleep, 100
	WinActivate, ahk_exe %App%
	sleep, 800
	send, !a
	sleep, 100
	send, i
}
Else
{
	WinActivate, ahk_exe %App%
}
return
