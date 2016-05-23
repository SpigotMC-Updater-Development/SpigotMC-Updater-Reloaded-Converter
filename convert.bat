@echo off

set startdir=%~dp0

cd %startdir%

@echo Updating SpigotMC_Updater.bat
del /f ..\SpigotMC_Updater.bat
powershell -command Invoke-WebRequest -Uri https://raw.githubusercontent.com/SpigotMC-Updater-Development/SpigotMC-Updater-Reloaded/master/SpigotMC_Updater.bat -OutFile ..\SpigotMC_Updater.bat
@echo Updated SpigotMC_Updater.bat
echo.
@echo Updating menu.bat
del /f ..\menu.bat
powershell -command Invoke-WebRequest -Uri https://raw.githubusercontent.com/SpigotMC-Updater-Development/SpigotMC-Updater-Reloaded/master/menu.bat -OutFile ..\menu.bat
@echo Updated menu.bat
echo.
@echo Updating tasks\Buildtools_Files\run.bat
del /f tasks\Buildtools_Files\run.bat
powershell -command Invoke-WebRequest -Uri https://raw.githubusercontent.com/SpigotMC-Updater-Development/SpigotMC-Updater-Reloaded/master/tasks/Buildtools_Files/run.bat -OutFile Buildtools_Files\run.bat
@echo Updated %startdir%runbuildtools.bat
echo.
@echo Updating tasks\plugin_repair_tool.bat
del /f plugin_repair_tool.bat
powershell -command Invoke-WebRequest -Uri https://raw.githubusercontent.com/SpigotMC-Updater-Development/SpigotMC-Updater-Reloaded/master/tasks/plugin_repair_tool.bat -OutFile plugin_repair_tool.bat
@echo Updated task\plugin_repair_tool.bat
echo.
@echo Updating tasks\delbt.bat
del /f delbt.bat
powershell -command Invoke-WebRequest -Uri https://raw.githubusercontent.com/SpigotMC-Updater-Development/SpigotMC-Updater-Reloaded/master/tasks/delbt.bat -OutFile delbt.bat
@echo Updated tasks\delbt.bat
echo.

@echo Checking for any new files to add/remove...
echo.
@echo Finished Checking for adding/removing files
echo.
powershell -command Invoke-WebRequest -Uri https://raw.githubusercontent.com/SpigotMC-Updater-Development/SpigotMC-Updater-Reloaded-Converter/master/tasks/changelog.bat -OutFile tasks\changelog.bat
@echo Changes in this version:
start /b /wait changelog.bat
echo.
@echo You can read the changelogs at anytime in the program ;)
pause

exit
