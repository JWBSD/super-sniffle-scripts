#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
!z::
Loop,
{
InputBox, IMEI, Enter IMEI, Please enter the IMEI, 50, 200
if ErrorLevel
	return
else
	InputBox, SIM, Enter SIM, Please enter the SIM, 50, 200
if ErrorLevel
	return
else
	InputBox, Barcode, Enter Barcode, Please enter the Barcode, 50, 200
if ErrorLevel
	return
else
	InputBox, SN, Enter SN, Please enter the SN, 50, 200
if ErrorLevel
	return
else
	Send, %IMEI%{Tab}%SIM%{Tab}%Barcode%{Tab}%SN%{Enter}{Enter}
}
return