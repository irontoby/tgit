@echo off

set CMD=%1
shift

"c:\Program Files\TortoiseGit\bin\TortoiseGitProc.exe" /command:%CMD% %*
