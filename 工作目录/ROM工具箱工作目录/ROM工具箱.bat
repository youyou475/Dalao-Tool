@echo off
color fc
title ROM������
:home
cls
echo ��ӭʹ��ROM�����䣡
echo ===================
echo ����ѡ�
echo 1.ROM ģ��
echo 2.ADB ģ��
echo 3.���������ɫ
echo 4.���ش��й�����
set /P xz=ѡ��:
if /I "%xz%"=="1" goto romhome
if /I "%xz%"=="2" goto adbhome
if /I "%xz%"=="3" goto colorhome
if /I "%xz%"=="4" goto dalaohome
:colorhome
cls
echo ===================
echo �����ɫ
echo ===================
echo ����ѡ�
echo 1.��ɫ
echo 2.��ɫ
echo 3.��ɫ
echo 4.�ص����˵�
set /P xz=ѡ��:
if /I "%xz%"=="1" color fa
if /I "%xz%"=="2" color fd
if /I "%xz%"=="3" color fc
if /I "%xz%"=="4" goto nohome
goto nohome
:dalaohome
cls
echo ������ָ�������ɫΪĬ���𣬼�����
echo ===================
echo ����ѡ�
echo 1.���Ѿ��������ˣ�������й�����ɣ�
echo 2.���ˣ��һ��Ǽ���ʹ��ROM������ɣ�
set /P xz=ѡ��:
if /I "%xz%"=="1" call ���й�����.bat
if /I "%xz%"=="2" goto nohome
cls
:nohome
cls
echo ===================
echo ����ѡ�
echo 1.ROM ģ��
echo 2.ADB ģ��
echo 3.���������ɫ
echo 4.���ش��й�����
set /P xz=ѡ��:
if /I "%xz%"=="1" goto romhome
if /I "%xz%"=="2" goto adbhome
if /I "%xz%"=="3" goto colorhome
if /I "%xz%"=="4" goto dalaohome
:adbhome
cls
echo ===================
echo [1] �鿴�ֻ� ϵͳ�汾 api �� �����������Ϣ
echo [2] ��ʾ ���ӵ������ ���豸
echo [3] ��ȡ �豸 ��ID �� ���к�
echo [4] ���� adb���� ����
echo [5] �ص� ���˵�
set /P xz2=ѡ��:
if /I "%xz2%"=="1" goto seephone
if /I "%xz2%"=="2" goto adbdev
if /I "%xz2%"=="3" goto seemeid
if /I "%xz2%"=="4" goto rebootadb
if /I "%xz2%"=="5" goto nohome
:rebootadb
cd .\adb
adb kill-server
adb start-server
:seemeid
cd .\adb
adb get-serialno
goto adbhome
:seephone
cd .\adb
adb shell getprop ro.build.version.release
adb shell getprop ro.build.version.sdk
adb shell getprop | grep "model\|version.sdk\|manufacturer\|hardware\|platform\|revision\|serialno\|product.name\|brand"
goto adbhome
:adbdev
cd .\adb
adb devices
goto adbhome
:romhome
cls
echo ==================
echo [1] ǩ�� ROM
echo [2] Odex ��ROM
echo [3] �⿪ boot
echo [4] ��� boot
echo [5] �⿪ ramdisk
echo [6] ��� ramdisk
echo [7] �ص� ���˵�
set /P xz1=ѡ��:
if /I "xz1"=="1" goto signrom
if /I "%xz1%"=="2" goto deodexrom
if /I "%xz1%"=="3" goto unpackboot
if /I "%xz1%"=="4" goto repackboot
if /I "%xz1%"=="5" goto unpackramdisk
if /I "%xz1%"=="6" goto repackramdisk
if /I "%xz1%"=="7" goto nohome
:repackramdisk
bootimg.exe --repack-ramdisk
goto romhome
:unpackramdisk
bootimg.exe --unpack-ramdisk
goto romhome
:signrom
echo �����Ҫǩ����ROM���ļ����빤�߸�Ŀ¼������Ϊupdate.zip
java -jar signapk.jar testkey.x509.pem testkey.pk8 update.zip update_signed.zip
echo ǩ��ROM���ɹ� ������ֻ� ����ˢд����
goto romhome
:deodexrom
color fc
setlocal EnableDelayedExpansion
echo.       
set apilevel=%1
set bootclasspatch=%2

set home=%cd%
set system=%home%\system
set app=%system%\app
set priv-app=%system%\priv-app
set framework=%system%\framework
set temp_framework=%system%\temp_framework
set tools=%home%\tools

if not exist %framework% (
echo.����û�з���system\frameworkĿ¼
pause
exit )
if not exist %tools% (
echo.���󣺹����䲻����,toolsĿ¼����ɾ��
pause
exit )

if "%1"=="" echo.apilevelδ�ֶ���ֵ && call :getapilevel
echo.apilevel=%apilevel%

if "%2"=="" echo.bootclasspatchδ�ֶ���ֵ && call :getbootclasspatch
echo.bootclasspatch=%bootclasspatch%

echo.
echo.����Android��ܱ���....
echo.
if exist %temp_framework% rd /q /s %temp_framework%
mkdir %temp_framework%
xcopy %framework% %temp_framework% /E/Q >nul
echo.Android��ܱ������
echo.

for %%i in (%framework% %app% %priv-app%) do call :defolder %%i

echo ɾ��Android��ܱ���....
echo.
rd /q /s %temp_framework%
echo.deodex��ɣ�
echo.
pause
goto :eof

:defolder
if not exist %1 (
echo.δ����%~n1Ŀ¼
echo.
goto :eof
)
echo.��ʼ�ϲ�%~n1Ŀ¼...
for %%i in (baksmali.jar smali.jar 7z.exe 7z.dll) do copy tools\%%i %1 >nul
cd %1
if "%~n1"=="framework" (
for /r %1 %%a in (*.odex) do call :deodex %%a jar
) else (
for /r %1 %%a in (*.odex) do call :deodex %%a apk
)
cd %home%
echo.�ϲ�%~n1Ŀ¼���
echo.
for %%i in (baksmali.jar smali.jar 7z.exe 7z.dll) do del /f %1\%%i 
goto :eof

:deodex
echo.---- ��ʼ�ϲ�%~n1.%2 ----
call :checkdex %~n1.%2
if %errorlevel%==1 echo.����ϲ�%~n1.%2 &&echo.---- �ϲ�%~n1.%2�ɹ� ---- && echo. && del /q/f %1 && goto :eof
echo.���ڽ� %~n1.odex ת��Ϊ classes.dex ...
if "%apilevel%"=="" (
java -jar baksmali.jar -d %temp_framework% -c %bootclasspatch% -x %1
java -jar smali.jar out -o classes.dex
) else (
java -jar baksmali.jar -a %apilevel% -d %temp_framework% -x %1
java -jar smali.jar -a %apilevel% out -o classes.dex
)
del %1 /Q
rd out /Q /S
echo.���ڽ� %~n1.%2 �� classes.dex �ϲ�...
7z.exe a -tzip %~n1.%2 classes.dex>nul
del classes.dex /Q
echo.---- �ϲ�%~n1.%2�ɹ� ----
echo.
goto :eof

:checkdex
::7z.exe l %1 > %system%\test
%tools%\aapt.exe l %1 > %system%\test
findstr "classes.dex" "%system%\test">nul && echo.%1�Ѿ�����classes.dex && set retVal=1 || set retVal=0
del /q/f %system%\test
exit /b %retVal%

:getapilevel
if not exist %framework%\framework-res.apk echo.������framework-res.apk && goto :eof
%tools%\aapt.exe d badging %framework%\framework-res.apk > %system%\systeminfo.txt
echo.�����Զ���ȡapilevel
for /f "tokens=1,2 delims='" %%a in (%system%\systeminfo.txt) do (if "%%a"=="targetSdkVersion:" set apilevel=%%b)
if not %apilevel%=="" del /q/f %system%\systeminfo.txt && goto :eof
echo.�����Զ���ȡapilevel
for /f "tokens=1,2 delims='" %%a in (%system%\systeminfo.txt) do (if "%%a"=="sdkVersion:" set apilevel=%%b)
if not %apilevel%=="" del /q/f %system%\systeminfo.txt && goto :eof
echo.�����Զ���ȡapilevel
for /f "tokens=3,4 delims='" %%a in (%system%\systeminfo.txt) do (if "%%a"==" versionCode=" set apilevel=%%b)
::echo.apilevel=%apilevel%
del /q/f %system%\systeminfo.txt && goto :eof

:getbootclasspatch
echo.�����Զ���ȡbootclasspatch
for /r %framework% %%a in (*.jar) do set bootclasspatch=!bootclasspatch!:%%~nxa
if "%bootclasspatch:~0,1%"==":" set bootclasspatch=%bootclasspatch:~1%
::echo.bootclasspatch=%bootclasspatch%
goto :eof
endlocal
goto romhome
:unpackboot
bootimg.exe --unpack-bootimg
del /a/f/q ".\boot-old.img"
goto romhome
:repackboot
bootimg.exe --repack-bootimg
goto romhome






