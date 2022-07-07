@echo off
setlocal enabledelayedexpansion
set v=%%
set cmd=0
echo @echo off>%1.bat
FOR /F "delims=; tokens=1,2,3,4" %%a in (%1) do (
	set /a cmd=!cmd!+1
	echo :!cmd!>>%1.bat
	echo set /a %%a=%v%%%a%v%+1>>%1.bat
	echo goto %%b>>%1.bat
)