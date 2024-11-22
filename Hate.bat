@echo off
setlocal

mode con: cols=76 lines=40
color 0D
chcp 65001 >nul

call :check_internet
if errorlevel 1 (
    echo [41;37mSERVER_ERROR![0m^ [41;37mExiting[0m^ ...
    timeout /t 5 /nobreak >nul
    exit /b
)

curl ascii.live/nyan -m 4
cls

:menu
cls
color 0D
echo. [1m [35m
echo                    @@@  @@@   @@@@@@   @@@@@@@  @@@@@@@@  
echo                    @@@  @@@  @@@@@@@@  @@@@@@@  @@@@@@@@  
echo                    @@!  @@@  @@!  @@@    @@!    @@!       
echo                    !@!  @!@  !@!  @!@    !@!    !@!       
echo                    @!@!@!@!  @!@!@!@!    @!!    @!!!:!    
echo                    !!!@!!!!  !!!@!!!!    !!!    !!!!!:    
echo                    !!:  !!!  !!:  !!!    !!:    !!:       
echo                    :!:  !:!  :!:  !:!    :!:    :!:       
echo                    ::   :::  ::   :::     ::     :: ::::  
echo                     :   : :   :   : :     :     : :: ::  
echo.[97m
echo Main Menu:
echo.
echo  * IP Options: (1)
echo  * Changelog: (2)
echo  * Credits: (3)
echo.[97m

<nul set /p="[97mType your choice. 1,2,3: [1m"
set /p choice= 
if "%choice%"=="1" goto ip_menu
if "%choice%"=="2" goto changelog
if "%choice%"=="3" goto credits
echo [41;97mInvalid choice. Please enter 1, 2, or 3.[0m
timeout /t 2 /nobreak >nul
goto menu

:ip_menu
cls
echo. [1m [35m
echo                    @@@  @@@   @@@@@@   @@@@@@@  @@@@@@@@  
echo                    @@@  @@@  @@@@@@@@  @@@@@@@  @@@@@@@@  
echo                    @@!  @@@  @@!  @@@    @@!    @@!       
echo                    !@!  @!@  !@!  @!@    !@!    !@!       
echo                    @!@!@!@!  @!@!@!@!    @!!    @!!!:!    
echo                    !!!@!!!!  !!!@!!!!    !!!    !!!!!:    
echo                    !!:  !!!  !!:  !!!    !!:    !!:       
echo                    :!:  !:!  :!:  !:!    :!:    :!:       
echo                    ::   :::  ::   :::     ::     :: ::::  
echo                     :   : :   :   : :     :     : :: ::  
echo.[97m
echo IP Options:
echo.
echo  * Ping an IP: (1)
echo  * Return to Main Menu: (2)
echo.[97m

<nul set /p="[97mType your choice. 1,2: [1m"
set /p choice=
if "%choice%"=="1" goto rainbow_pinger
if "%choice%"=="2" goto menu
echo [41;97mInvalid choice. Please enter 1 or 2.[0m
timeout /t 2 /nobreak >nul
goto ip_menu

:rainbow_pinger
cls
echo.
<nul set /p="[97mIP > [1m"
set /p IP=
call :validate_ip "%IP%"
if errorlevel 1 (
    echo [41;97mInvalid IP address. Please enter a valid IP address.[0m
    timeout /t 2 /nobreak >nul
    goto rainbow_pinger
)
:rainbow
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Request timed out.)
ping -t 2 0 10 127.0.0.1 >nul
color a
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Request timed out.)
ping -t 2 0 10 127.0.0.1 >nul
color 02
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Request timed out.) 
ping -t 2 0 10 127.0.0.1 >nul
color 03
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Request timed out.) 
ping -t 2 0 10 127.0.0.1 >nul
color 04
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Request timed out.)
ping -t 2 0 10 127.0.0.1 >nul
color 05
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Request timed out.) 
ping -t 2 0 10 127.0.0.1 >nul
color 06
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Request timed out.) 
ping -t 2 0 10 127.0.0.1 >nul
color 07
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Request timed out.) 
ping -t 2 0 10 127.0.0.1 >nul
color 08
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Request timed out.) 
ping -t 2 0 10 127.0.0.1 >nul
color 09
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Request timed out.)
ping -t 2 0 10 127.0.0.1 >nul
color 0a
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Request timed out.)
ping -t 2 0 10 127.0.0.1 >nul
color 0b
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Request timed out.) 
ping -t 2 0 10 127.0.0.1 >nul
color 0c
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Request timed out.) 
ping -t 2 0 10 127.0.0.1 >nul
color 0d
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Request timed out.)
ping -t 2 0 10 127.0.0.1 >nul
color 0e
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Request timed out.)
ping -t 2 0 10 127.0.0.1 >nul
color 0f
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Request timed out.)
ping -t 2 0 10 127.0.0.1 >nul
goto rainbow

:changelog
cls
echo. [1m [35m
echo                    @@@  @@@   @@@@@@   @@@@@@@  @@@@@@@@  
echo                    @@@  @@@  @@@@@@@@  @@@@@@@  @@@@@@@@  
echo                    @@!  @@@  @@!  @@@    @@!    @@!       
echo                    !@!  @!@  !@!  @!@    !@!    !@!       
echo                    @!@!@!@!  @!@!@!@!    @!!    @!!!:!    
echo                    !!!@!!!!  !!!@!!!!    !!!    !!!!!:    
echo                    !!:  !!!  !!:  !!!    !!:    !!:       
echo                    :!:  !:!  :!:  !:!    :!:    :!:       
echo                    ::   :::  ::   :::     ::     :: ::::  
echo                     :   : :   :   : :     :     : :: ::  
echo.[97m
echo [1mChangelog:[0m
echo.
echo [1;35m1.0.0-alpha - Stable release, setting the stage for future updates.[0m
echo  • "View Your IP" and "Lookup an IP" options removed due to API issues
echo  These features will be fixed and re-added in a future update
echo.
echo [1;35m1.0.0-pre-alpha - The Beginning?[0m
echo  • Initial release
echo.
echo [97mReturn to Main Menu: (1)[0m
<nul set /p="[97mType your choice: [0m"
set /p choice=
if "%choice%"=="1" goto menu
goto changelog_input_error

:changelog_input_error
echo [41;97mInput cannot be empty or invalid. Please enter '1' to return to the main menu.[0m
timeout /t 2 /nobreak >nul
goto changelog

:credits
cls
echo. [1m [35m
echo                    @@@  @@@   @@@@@@   @@@@@@@  @@@@@@@@  
echo                    @@@  @@@  @@@@@@@@  @@@@@@@  @@@@@@@@  
echo                    @@!  @@@  @@!  @@@    @@!    @@!       
echo                    !@!  @!@  !@!  @!@    !@!    !@!       
echo                    @!@!@!@!  @!@!@!@!    @!!    @!!!:!    
echo                    !!!@!!!!  !!!@!!!!    !!!    !!!!!:    
echo                    !!:  !!!  !!:  !!!    !!:    !!:       
echo                    :!:  !:!  :!:  !:!    :!:    :!:       
echo                    ::   :::  ::   :::     ::     :: ::::  
echo                     :   : :   :   : :     :     : :: ::  
echo.[97m
echo [1mCredits:[0m
echo.
echo  [1;35m_zltv Main Coder
echo  meowfordaddy.1 Helper[0m
echo.
echo [97mReturn to Main Menu: (1)[0m
echo.

<nul set /p="[97mType your choice. 1: [1m"
set /p choice=
if "%choice%"=="1" goto menu
goto credits_input_error

:credits_input_error
echo [41;97mInput cannot be empty or invalid. Please enter '1' to return to the main menu.[0m
timeout /t 2 /nobreak >nul
goto credits

:check_internet
curl -s 1.1.1.1 >nul
exit /b %errorlevel%

:validate_ip
setlocal
set "ip=%~1"
set "valid=false"
for /f "tokens=1-4 delims=." %%a in ("%ip%") do (
    set /a "octet1=%%a"
    set /a "octet2=%%b"
    set /a "octet3=%%c"
    set /a "octet4=%%d"
    if %%a geq 0 if %%a leq 255 if %%b geq 0 if %%b leq 255 if %%c geq 0 if %%c leq 255 if %%d geq 0 if %%d leq 255 (
        set "valid=true"
    )
)
if "%valid%"=="true" (
    endlocal
    exit /b 0
)
endlocal
exit /b 1