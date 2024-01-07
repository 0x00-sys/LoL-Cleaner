@echo off
setlocal

echo [91mLeague of Legends Log Cleaner[0m
echo [91mBy: [92m@0x00[0m
echo.
timeout 5
echo [92mClose everything related League of Legends[0m
taskkill /F /IM "RiotClientUx.exe"
taskkill /F /IM "League of Legends.exe"
taskkill /F /IM "RiotClientServices.exe"
taskkill /F /IM "RiotClientUxRender.exe"
taskkill /F /IM "LeagueClient.exe"
taskkill /F /IM "LeagueCrashHandler.exe"
timeout 1

echo [92mDeleting LCCache[0m
rmdir "D:\Riot Games\League of Legends\LCCache\" /S /Q
rmdir "C:\Riot Games\League of Legends\LCCache\" /S /Q
rmdir "E:\Riot Games\League of Legends\LCCache\" /S /Q

echo [92mDeleting Cache[0m
rmdir "D:\Riot Games\League of Legends\Cache\" /S /Q
rmdir "C:\Riot Games\League of Legends\Cache\" /S /Q
rmdir "E:\Riot Games\League of Legends\Cache\" /S /Q

echo [92mDeleting GPUCache[0m
rmdir "D:\Riot Games\League of Legends\GPUCache\" /S /Q
rmdir "C:\Riot Games\League of Legends\GPUCache\" /S /Q
rmdir "E:\Riot Games\League of Legends\GPUCache\" /S /Q

echo [92mDeleting Logs[0m
rmdir "D:\Riot Games\League of Legends\Logs\" /S /Q
rmdir "C:\Riot Games\League of Legends\Logs\" /S /Q
rmdir "E:\Riot Games\League of Legends\Logs\" /S /Q

echo [92mDeleting Screenshots[0m
rmdir "D:\Riot Games\League of Legends\Screenshots\" /S /Q
rmdir "C:\Riot Games\League of Legends\Screenshots\" /S /Q
rmdir "E:\Riot Games\League of Legends\Screenshots\" /S /Q

echo [92mDeleting Highlights[0m
rmdir "%USERPROFILE%\Documents\League of Legends\Highlights\" /S /Q

echo [92mDeleting Windows Prefetch[0m
del /F /Q C:\Windows\Prefetch\LEAGUE*.*
del /F /Q C:\Windows\Prefetch\RIOT*.*
del /F /Q D:\Windows\Prefetch\LEAGUE*.*
del /F /Q D:\Windows\Prefetch\RIOT*.*
del /F /Q E:\Windows\Prefetch\LEAGUE*.*
del /F /Q E:\Windows\Prefetch\RIOT*.*

echo [92mDeleting Machine CFG[0m
rmdir "%ProgramData%\Riot Games\" /S /Q

echo Deleting RiotGame log
rmdir "%LocalAppData%\Riot Games\" /S /Q

echo [93mDo you want to delete config files? (Y/N)[0m
choice /C YN /M "Press Y for Yes, N for No:"
if errorlevel 2 goto :skipConfig
if errorlevel 1 (
    echo [92mDeleting Config Files...[0m
    rmdir "D:\Riot Games\League of Legends\Config\" /S /Q
    rmdir "C:\Riot Games\League of Legends\Config\" /S /Q
    rmdir "E:\Riot Games\League of Legends\Config\" /S /Q
    goto :deletedConfig
)

:skipConfig
cls
echo.
echo [32mEverything other than config files was deleted, enjoy![0m
goto :end

:deletedConfig
cls
echo.
echo [32mEverything deleted, enjoy![0m

:end
set /p DUMMY=Hit ENTER to continue...
goto :eof