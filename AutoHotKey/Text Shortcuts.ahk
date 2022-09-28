#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
^[::
send, {{ticket.requester.first_name}}​,
return

^+q::
send, If you have any other questions or concerns please feel free to reach out to help desk by either replying to this email or by calling 208-854-6670. Thank you.
return