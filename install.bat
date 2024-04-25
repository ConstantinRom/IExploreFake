@echo off

:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------    
set folder="C:\programdata\script"
if not exist %folder% (
    mkdir %folder%
    echo Folder %folder% created successfully.
) else (
    echo Folder %folder% already exists.
)

if not exist %folder%\iexplore.exe (
    copy iexplore.exe %folder%\iexplore.exe
    echo iexplore.exe to %folder%\iexplore.exe copied
) else (
    echo Application %folder%\iexplore.exe already exists.
)

echo import reg
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\IEXPLORE.EXE" /v "" /t REG_SZ /d "%folder%\iexplore.exe" /f

if "%1"=="-s" (
    echo Parameter is -s Silent
) else (
	pause
)