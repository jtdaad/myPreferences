#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#IfWinActive ahk_exe atom.exe
capslock::Esc

#IfWinActive ahk_class Vim.exe
capslock::Esc

#ifWinActive ahk_exe cmd.exe

; for VIM in console
capslock::Esc

; console file navigation shortcuts
::www::cd /inetpub/wwwroot/
::..::cd ../
::..2::cd ../../
::..3::cd ../../../
::..4::cd ../../../../
::..5::cd ../../../../../


; Hide the mouse while typing

#IfWinActive ; Map all subsequent mappings for all windows