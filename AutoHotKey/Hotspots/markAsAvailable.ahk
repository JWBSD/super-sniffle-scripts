#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
!p:: ; Alt + P // Starts script
FileSelectFile, source_file, Text Documents (*.txt) ; Prompts user for source file
if (source_file = "")
	Return ; If no source file is selected then script ends
Else	
	KeyWait, Ctrl, D T30 ; Waits until Ctrl is pressed to proceed.
		Loop, read, %source_file% ; Reads previously selected file
			{
				If ErrorLevel
					Break ; If an error occurs exit the loop
				Else
					Send, %A_LoopReadLine%
					Send, {enter}
					Sleep, 400
					Send, {Tab}{Tab}{Tab}{tab}{Enter}
                    Sleep, 400
                    Send, {Tab}{Tab}{Enter}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Down}{Enter}
                    Sleep, 400
                    Send, {Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Enter}
                    Sleep, 400
			}
MsgBox, The end of the file has been reached or there was a problem.
;
Pause::Pause ; Pause/Break // Pauses script
;
Esc::Exitapp ; Exits script
Return
