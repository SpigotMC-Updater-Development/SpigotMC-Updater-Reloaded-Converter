@echo off

set startdir=%~dp0

@echo Updating %startdir%SpigotMC_Updater.bat
del /f SpigotMC_Updater.bat
powershell -command Invoke-WebRequest -Uri https://raw.githubusercontent.com/SpigotMC-Updater-Development/SpigotMC-Updater-Reloaded/master/SpigotMC_Updater.bat -OutFile SpigotMC_Updater.bat
@echo Updated %startdir%SpigotMC_Updater.bat
echo.
@echo Updating %startdir%menu.bat
del /f menu.bat
powershell -command Invoke-WebRequest -Uri https://raw.githubusercontent.com/SpigotMC-Updater-Development/SpigotMC-Updater-Reloaded/master/menu.bat -OutFile menu.bat
@echo Updated %startdir%menu.bat
echo.
@echo Updating %startdir%runbuildtools.bat
del /f runbuildtools.bat
powershell -command Invoke-WebRequest -Uri https://raw.githubusercontent.com/SpigotMC-Updater-Development/SpigotMC-Updater-Reloaded/master/runbuildtools.bat -OutFile runbuildtools.bat
@echo Updated %startdir%runbuildtools.bat
echo.
@echo Updating %startdir%plugin_repair_tool.bat
del /f plugin_repair_tool.bat
powershell -command Invoke-WebRequest -Uri https://raw.githubusercontent.com/SpigotMC-Updater-Development/SpigotMC-Updater-Reloaded/master/runbuildtools.bat -OutFile runbuildtools.bat
@echo Updated %startdir%plugin_repair_tool.bat
echo.
@echo Updating %startdir%tasks\delbt.bat
del /f tasks\delbt.bat
powershell -command Invoke-WebRequest -Uri https://raw.githubusercontent.com/SpigotMC-Updater-Development/SpigotMC-Updater-Reloaded/master/tasks/delbt.bat -OutFile tasks/delbt.bat
@echo Updated %startdir%tasks\delbt.bat
echo.
@echo Updating %startdir%tasks\help.bat
del /f tasks\help.bat
powershell -command Invoke-WebRequest -Uri https://raw.githubusercontent.com/SpigotMC-Updater-Development/SpigotMC-Updater-Reloaded/master/tasks/help.bat -OutFile tasks/help.bat
@echo Updated %startdir%tasks\help.bat
echo.

@echo Checking for any new files to add/remove...
echo.
@echo Finished Checking for adding/removing files
echo.
powershell -command Invoke-WebRequest -Uri https://raw.githubusercontent.com/SpigotMC-Updater-Development/SpigotMC-Updater-Reloaded-Converter/master/tasks/changelog.bat -OutFile tasks\changelog.bat
@echo Changes in this version:
start /b /wait tasks\changelog.bat
echo.
@echo You can read the changelogs by issuing command "program changes" in the program ;)
pause

exit
