@echo off

if exist tasks/changelog.bat (goto show) else (exit)

:show

set v=
for /f "delims=" %%i in ('type tasks\version.txt') do set v=%%i\

echo.
@echo ------------------------------{Changes in v.%v%}------------------------------
@echo * Rewritten and changed code
@echo * Removed version.txt as a prompt will occur
@echo * plugin.txt will prompt when opened.
@echo * Session.txt was added to prevent breaking/wasted space
@echo * Renamed Buildtools.bat to SpigotMC_Updater.bat
@echo * Will get a prompt if you want to update the script.
@echo * Added info command that will launch your default browser to this resource
@echo * cleaning logging info to where its no longer piled onto eachother
@echo * fixed pluginfixer not correct bug
@echo * Adding convert.bat as a convert to the latest version
@echo * Buildtools files now execute in the correct folder
@echo * Tasks now properly work (same fix as the last one)
@echo * changed commands into numbers
@echo * gitlocation.txt will launch on setup
@echo * This is a large update as some bugs could still be here. Place an issue here
@echo   as an issue may still occur.
echo.

exit
