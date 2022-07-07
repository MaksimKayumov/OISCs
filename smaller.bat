@echo off
set v=%%
echo @echo off>%1.bat
echo :start>>%1.bat
FOR /F "delims=; tokens=1,2,3,4" %%a in (%1) do (
	echo set /a %%a=%v%%%b%v%+%%c>>%1.bat
	echo if %%b == 0 goto start >>%1.bat
)