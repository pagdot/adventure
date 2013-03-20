@echo off

::readline.bat

::HELP
::readline.bat FILE LINE OUTPUTFILE

setlocal EnableDelayedExpansion 

set in_file=%1
set line=%2
set out_file=%3



set count=1
for /F "Tokens=*" %%i in (%in_file%) do (
	If !count!==%line% (
		set out=%%i
		goto break
	)
	Set /a count+=1
)

:break
echo %out%>%out_file%