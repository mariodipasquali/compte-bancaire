@echo off
setlocal
set "SCRIPT=%~dp0compte_bancaire.py"
if not exist "%SCRIPT%" (
    echo compte_bancaire.py introuvable dans %~dp0
    pause
    exit /b 1
)
where py >nul 2>nul
if %errorlevel% equ 0 (
    py "%SCRIPT%" %*
) else (
    python "%SCRIPT%" %*
)
if errorlevel 1 pause
