#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;--- Open Notes Folder in Google Drive --------------------------------------
#!n::
Run, https://drive.google.com/drive/folders/1NQdaF3jZzRLvTfm8fxRv49LPMBTSEkhz
return
;--- Open Up New Tab in Firefox from anywhere -------------------------------
!q::
Process, Exist, firefox.exe
if ErrorLevel = 0
{
	run, firefox.exe
	Sleep, 100
	WinActivate, ahk_exe firefox.exe
}
Else
{
	WinActivate, ahk_exe firefox.exe
	Sleep, 100
	Send, ^t
}
return
;--- Open Youtube Music versus local media player ---------------------------
Launch_Media::
Process, Exist, firefox.exe
if ErrorLevel = 0
{
	run, firefox.exe "https://music.youtube.com"
	Sleep, 100
	WinActivate, ahk_exe firefox.exe
}
Else
{
	WinActivate, ahk_exe firefox.exe
	Sleep, 100
	Send, ^t
	Send, https://music.youtube.com{enter}
}
return
;--- Open Drive ------------------------------------------------------------
+!d::
Run, https://drive.google.com/drive
return
;--- Insert Shrug Guy ------------------------------------------------------
^\::
Send, ¯\_(ツ)_/¯
return
;--- Open Terminal ---------------------------------------------------------
^!t:: ; Ctrl + Alt + T
run, "C:\Program Files\WindowsApps\Microsoft.WindowsTerminal_1.13.11432.0_x64__8wekyb3d8bbwe\WindowsTerminal.exe"
return