@echo off

set CMD=%1

shift

if "%1"=="" GOTO NOPATH
rem Ensure casing of path parameter is correct
pushd .
cd %~dp0
set PATH=%~f1
popd

shift
GOTO EXEC

:NOPATH
set PATH="."

:EXEC
"c:\Program Files\TortoiseGit\bin\TortoiseGitProc.exe" /command:%CMD% /path:"%PATH%" %*
