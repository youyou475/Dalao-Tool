@echo off
color fc
title ROM工具箱
:home
cls
echo 欢迎使用ROM工具箱！
echo ===================
echo 操作选项：
echo 1.ROM 模块
echo 2.ADB 模块
echo 3.变更字体颜色
echo 4.返回大佬工具箱
set /P xz=选择:
if /I "%xz%"=="1" goto romhome
if /I "%xz%"=="2" goto adbhome
if /I "%xz%"=="3" goto colorhome
if /I "%xz%"=="4" goto dalaohome
:colorhome
cls
echo ===================
echo 变更颜色
echo ===================
echo 操作选项：
echo 1.绿色
echo 2.紫色
echo 3.红色
echo 4.回到主菜单
set /P xz=选择:
if /I "%xz%"=="1" color fa
if /I "%xz%"=="2" color fd
if /I "%xz%"=="3" color fc
if /I "%xz%"=="4" goto nohome
goto nohome
:dalaohome
cls
echo 这样会恢复文字颜色为默认吗，继续吗？
echo ===================
echo 操作选项：
echo 1.我已经决定好了，进入大佬工具箱吧！
echo 2.算了，我还是继续使用ROM工具箱吧！
set /P xz=选择:
if /I "%xz%"=="1" call 大佬工具箱.bat
if /I "%xz%"=="2" goto nohome
cls
:nohome
cls
echo ===================
echo 操作选项：
echo 1.ROM 模块
echo 2.ADB 模块
echo 3.变更字体颜色
echo 4.返回大佬工具箱
set /P xz=选择:
if /I "%xz%"=="1" goto romhome
if /I "%xz%"=="2" goto adbhome
if /I "%xz%"=="3" goto colorhome
if /I "%xz%"=="4" goto dalaohome
:adbhome
cls
echo ===================
echo [1] 查看手机 系统版本 api 与 相关制造商信息
echo [2] 显示 连接到计算机 的设备
echo [3] 获取 设备 的ID 和 序列号
echo [4] 重启 adb服务 进程
echo [5] 回到 主菜单
set /P xz2=选择:
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
echo [1] 签名 ROM
echo [2] Odex 化ROM
echo [3] 解开 boot
echo [4] 打包 boot
echo [5] 解开 ramdisk
echo [6] 打包 ramdisk
echo [7] 回到 主菜单
set /P xz1=选择:
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
echo 请把需要签名的ROM包文件放入工具根目录并重名为update.zip
java -jar signapk.jar testkey.x509.pem testkey.pk8 update.zip update_signed.zip
echo 签名ROM包成功 请放入手机 进行刷写测试
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
echo.错误：没有发现system\framework目录
pause
exit )
if not exist %tools% (
echo.错误：工具箱不完整,tools目录不可删除
pause
exit )

if "%1"=="" echo.apilevel未手动赋值 && call :getapilevel
echo.apilevel=%apilevel%

if "%2"=="" echo.bootclasspatch未手动赋值 && call :getbootclasspatch
echo.bootclasspatch=%bootclasspatch%

echo.
echo.创建Android框架备份....
echo.
if exist %temp_framework% rd /q /s %temp_framework%
mkdir %temp_framework%
xcopy %framework% %temp_framework% /E/Q >nul
echo.Android框架备份完成
echo.

for %%i in (%framework% %app% %priv-app%) do call :defolder %%i

echo 删除Android框架备份....
echo.
rd /q /s %temp_framework%
echo.deodex完成！
echo.
pause
goto :eof

:defolder
if not exist %1 (
echo.未发现%~n1目录
echo.
goto :eof
)
echo.开始合并%~n1目录...
for %%i in (baksmali.jar smali.jar 7z.exe 7z.dll) do copy tools\%%i %1 >nul
cd %1
if "%~n1"=="framework" (
for /r %1 %%a in (*.odex) do call :deodex %%a jar
) else (
for /r %1 %%a in (*.odex) do call :deodex %%a apk
)
cd %home%
echo.合并%~n1目录完成
echo.
for %%i in (baksmali.jar smali.jar 7z.exe 7z.dll) do del /f %1\%%i 
goto :eof

:deodex
echo.---- 开始合并%~n1.%2 ----
call :checkdex %~n1.%2
if %errorlevel%==1 echo.无需合并%~n1.%2 &&echo.---- 合并%~n1.%2成功 ---- && echo. && del /q/f %1 && goto :eof
echo.正在将 %~n1.odex 转化为 classes.dex ...
if "%apilevel%"=="" (
java -jar baksmali.jar -d %temp_framework% -c %bootclasspatch% -x %1
java -jar smali.jar out -o classes.dex
) else (
java -jar baksmali.jar -a %apilevel% -d %temp_framework% -x %1
java -jar smali.jar -a %apilevel% out -o classes.dex
)
del %1 /Q
rd out /Q /S
echo.正在将 %~n1.%2 与 classes.dex 合并...
7z.exe a -tzip %~n1.%2 classes.dex>nul
del classes.dex /Q
echo.---- 合并%~n1.%2成功 ----
echo.
goto :eof

:checkdex
::7z.exe l %1 > %system%\test
%tools%\aapt.exe l %1 > %system%\test
findstr "classes.dex" "%system%\test">nul && echo.%1已经存在classes.dex && set retVal=1 || set retVal=0
del /q/f %system%\test
exit /b %retVal%

:getapilevel
if not exist %framework%\framework-res.apk echo.不存在framework-res.apk && goto :eof
%tools%\aapt.exe d badging %framework%\framework-res.apk > %system%\systeminfo.txt
echo.尝试自动获取apilevel
for /f "tokens=1,2 delims='" %%a in (%system%\systeminfo.txt) do (if "%%a"=="targetSdkVersion:" set apilevel=%%b)
if not %apilevel%=="" del /q/f %system%\systeminfo.txt && goto :eof
echo.重新自动获取apilevel
for /f "tokens=1,2 delims='" %%a in (%system%\systeminfo.txt) do (if "%%a"=="sdkVersion:" set apilevel=%%b)
if not %apilevel%=="" del /q/f %system%\systeminfo.txt && goto :eof
echo.重新自动获取apilevel
for /f "tokens=3,4 delims='" %%a in (%system%\systeminfo.txt) do (if "%%a"==" versionCode=" set apilevel=%%b)
::echo.apilevel=%apilevel%
del /q/f %system%\systeminfo.txt && goto :eof

:getbootclasspatch
echo.尝试自动获取bootclasspatch
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






