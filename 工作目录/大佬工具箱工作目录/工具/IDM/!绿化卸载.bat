@ECHO OFF&PUSHD %~DP0 &TITLE 绿化卸载
Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo 请使用右键管理员身份运行！&&Pause >nul&&Exit)
Rd "%WinDir%\System32\test_permissions" 2>NUL
SetLocal EnableDelayedExpansion

:Menu
echo.&echo 1、绿化
echo.&echo 2、卸载
echo.&echo.
set /p a=输入回车：
IF NOT "%a%"=="" SET a=%a:~0,1%
if "%a%"=="1" Goto Setup
if "%a%"=="2" Goto Uninst
echo.&echo 输入无效，请重新输入！ 
PAUSE >NUL && CLS && GOTO Menu

:Setup
taskkill /f /im IDM* >NUL 2>NUL
taskkill /f /im IEMon* >NUL 2>NUL

::清理之前残留的注册表类标识键值和假序列号
:: reg delete HKCU\Software\DownloadManager /v scansk /f>NUL 2>NUL
:: reg delete HKCU\Software\DownloadManager /v tvfrdt /f>NUL 2>NUL
:: reg delete HKCU\Software\DownloadManager /v CheckUpdtVM /f>NUL 2>NUL
:: reg delete HKCU\Software\DownloadManager /v LName /f>NUL 2>NUL
:: reg delete HKCU\Software\DownloadManager /v FName /f>NUL 2>NUL
:: reg delete HKCU\Software\DownloadManager /v Email /f>NUL 2>NUL
:: reg delete HKCU\Software\DownloadManager /v Serial /f>NUL 2>NUL
reg delete "HKLM\SOFTWARE\Internet Download Manager" /f>NUL 2>NUL
reg delete "HKLM\SOFTWARE\Wow6432Node\Internet Download Manager" /f>NUL 2>NUL
reg delete HKCU\Software\Classes\CLSID\{07999AC3-058B-40BF-984F-69EB1E554CA7} /f>NUL 2>NUL
reg delete HKCU\Software\Classes\CLSID\{6DDF00DB-1234-46EC-8356-27E7B2051192} /f>NUL 2>NUL
reg delete HKCU\Software\Classes\CLSID\{D5B91409-A8CA-4973-9A0B-59F713D25671} /f>NUL 2>NUL
reg delete HKCU\Software\Classes\CLSID\{7B8E9164-324D-4A2E-A46D-0165FB2000EC} /f>NUL 2>NUL
reg delete HKCU\Software\Classes\CLSID\{5ED60779-4DE2-4E07-B862-974CA4FF2E9C} /f>NUL 2>NUL
reg delete HKLM\Software\Classes\CLSID\{07999AC3-058B-40BF-984F-69EB1E554CA7} /f>NUL 2>NUL
reg delete HKLM\Software\Classes\CLSID\{6DDF00DB-1234-46EC-8356-27E7B2051192} /f>NUL 2>NUL
reg delete HKLM\Software\Classes\CLSID\{D5B91409-A8CA-4973-9A0B-59F713D25671} /f>NUL 2>NUL
reg delete HKLM\Software\Classes\CLSID\{7B8E9164-324D-4A2E-A46D-0165FB2000EC} /f>NUL 2>NUL
reg delete HKLM\Software\Classes\CLSID\{5ED60779-4DE2-4E07-B862-974CA4FF2E9C} /f>NUL 2>NUL
reg delete HKCU\Software\Classes\Wow6432Node\CLSID\{7B8E9164-324D-4A2E-A46D-0165FB2000EC} /f>NUL 2>NUL
reg delete HKCU\Software\Classes\Wow6432Node\CLSID\{5ED60779-4DE2-4E07-B862-974CA4FF2E9C} /f>NUL 2>NUL
reg delete HKLM\Software\Classes\Wow6432Node\CLSID\{7B8E9164-324D-4A2E-A46D-0165FB2000EC} /f>NUL 2>NUL
reg delete HKLM\Software\Classes\Wow6432Node\CLSID\{5ED60779-4DE2-4E07-B862-974CA4FF2E9C} /f>NUL 2>NUL

:: Windows All
reg add HKCU\Software\DownloadManager /f /v ToolbarStyle /d "Faenza" >NUL
reg add HKCU\Software\DownloadManager /f /v idmvers /d "v6.28b11 Full" >NUL
reg add HKCU\Software\DownloadManager /f /v LaunchOnStart /t REG_DWORD /d 0 >NUL
reg add HKCU\Software\DownloadManager /f /v FSSettingsChecked /t REG_DWORD /d 1 >NUL
reg add HKCU\Software\DownloadManager /f /v LanguageID /t REG_DWORD /d "0x00000804" >NUL

:: Windows 64-Bit
If "%PROCESSOR_ARCHITECTURE%"=="AMD64" regsvr32 /s IDMIECC64.dll
If "%PROCESSOR_ARCHITECTURE%"=="AMD64" regsvr32 /s IDMGetAll64.dll
If "%PROCESSOR_ARCHITECTURE%"=="AMD64" regsvr32 /s downlWithIDM64.dll

:: Windows 7/8/10
If Exist "%Public%" idmBroker.exe -RegServer

:: Windows All
Start /Wait /B "" "%~dp0IDMan.exe" /rtr /isupdt /setlngid 2052 /fulllngfile idm_chn2.lng

:: Windows 7/8/10
If Exist "%Public%" Uninstall.exe -instdriv

:: Windows 7/8/10
If Exist "%Public%" Rundll32 setupapi.dll,InstallHinfSection DefaultInstall 128 .\idmwfp.inf
:: Windows XP
If Not Exist "%Public%" Rundll32 setupapi.dll,InstallHinfSection DefaultInstall 128 .\idmtdi.inf

:: Windows 7/8/10
If Exist "%Public%" Net Start IDMWFP >NUL 2>NUL
:: Windows XP
If Not Exist "%Public%" Net Start idmtdi >NUL 2>NUL

CLS & ECHO.&ECHO 绿化完成，是否创建桌面快捷方式？
ECHO.&ECHO 是按任意键，否直接关闭窗口即可！&&PAUSE >NUL
mshta VBScript:Execute("Set a=CreateObject(""WScript.Shell""):Set b=a.CreateShortcut(a.SpecialFolders(""Desktop"") & ""\IDM.lnk""):b.TargetPath=""%~dp0IDMan.exe"":b.WorkingDirectory=""%~dp0"":b.Save:close")
CLS && ECHO.&ECHO 创建完成，任意键返回！ &&PAUSE>NUL && CLS && GOTO MENU

:Uninst

taskkill /f /im IDM* >NUL 2>NUL
taskkill /f /im IEMon* >NUL 2>NUL

If Exist "%Public%" Net Stop IDMWFP >NUL 2>NUL
If Not Exist "%Public%" Net Stop IDMTDI >NUL 2>NUL

If Exist "%Public%" Rundll32 setupapi.dll,InstallHinfSection DefaultUninstall 128 .\idmwfp.inf
If Not Exist "%Public%" Rundll32 setupapi.dll,InstallHinfSection DefaultUninstall 128 .\idmtdi.inf

If Exist "%WinDir%\SysWOW64" Regsvr32 /s /u IDMShellExt64.dll

rd/s/q "%AppData%\IDM"2>NUL
If Exist "%a%" rd/s/q "%ProgramData%\IDM" 2>NUL
rd/s/q "%AllUsersProfile%\Application Data\IDM"2>NUL
reg delete HKCU\Software\DownloadManager /v scansk /f>NUL 2>NUL
reg delete HKCU\Software\DownloadManager /v tvfrdt /f>NUL 2>NUL
reg delete HKCU\Software\DownloadManager /v CheckUpdtVM /f>NUL 2>NUL
reg delete HKCU\Software\DownloadManager /v LName /f>NUL 2>NUL
reg delete HKCU\Software\DownloadManager /v FName /f>NUL 2>NUL
reg delete HKCU\Software\DownloadManager /v Email /f>NUL 2>NUL
reg delete HKCU\Software\DownloadManager /v Serial /f>NUL 2>NUL
reg delete "HKLM\SOFTWARE\Internet Download Manager" /f>NUL 2>NUL
reg delete "HKLM\SOFTWARE\Wow6432Node\Internet Download Manager" /f>NUL 2>NUL
reg delete HKCU\Software\Classes\CLSID\{07999AC3-058B-40BF-984F-69EB1E554CA7} /f>NUL 2>NUL
reg delete HKCU\Software\Classes\CLSID\{6DDF00DB-1234-46EC-8356-27E7B2051192} /f>NUL 2>NUL
reg delete HKCU\Software\Classes\CLSID\{D5B91409-A8CA-4973-9A0B-59F713D25671} /f>NUL 2>NUL
reg delete HKCU\Software\Classes\CLSID\{7B8E9164-324D-4A2E-A46D-0165FB2000EC} /f>NUL 2>NUL
reg delete HKCU\Software\Classes\CLSID\{5ED60779-4DE2-4E07-B862-974CA4FF2E9C} /f>NUL 2>NUL
reg delete HKLM\Software\Classes\CLSID\{07999AC3-058B-40BF-984F-69EB1E554CA7} /f>NUL 2>NUL
reg delete HKLM\Software\Classes\CLSID\{6DDF00DB-1234-46EC-8356-27E7B2051192} /f>NUL 2>NUL
reg delete HKLM\Software\Classes\CLSID\{D5B91409-A8CA-4973-9A0B-59F713D25671} /f>NUL 2>NUL
reg delete HKLM\Software\Classes\CLSID\{7B8E9164-324D-4A2E-A46D-0165FB2000EC} /f>NUL 2>NUL
reg delete HKLM\Software\Classes\CLSID\{5ED60779-4DE2-4E07-B862-974CA4FF2E9C} /f>NUL 2>NUL
reg delete HKCU\Software\Classes\Wow6432Node\CLSID\{7B8E9164-324D-4A2E-A46D-0165FB2000EC} /f>NUL 2>NUL
reg delete HKCU\Software\Classes\Wow6432Node\CLSID\{5ED60779-4DE2-4E07-B862-974CA4FF2E9C} /f>NUL 2>NUL
reg delete HKLM\Software\Classes\Wow6432Node\CLSID\{7B8E9164-324D-4A2E-A46D-0165FB2000EC} /f>NUL 2>NUL
reg delete HKLM\Software\Classes\Wow6432Node\CLSID\{5ED60779-4DE2-4E07-B862-974CA4FF2E9C} /f>NUL 2>NUL
taskkill /f /im explorer.exe >NUL 2>NUL & start explorer
CLS && ECHO.&ECHO.卸载完成！是否备份个人设置？
ECHO.&ECHO.是按任意键，否直接关闭窗口！&&PAUSE >NUL 2>NUL
regedit /e "用户配置.reg" HKEY_CURRENT_USER\Software\DownloadManager >NUL 2>NUL
reg delete HKEY_CURRENT_USER\Software\DownloadManager /f>NUL 2>NUL
CLS && ECHO.&ECHO 卸载完成，任意键返回！ &&PAUSE >NUL && CLS && GOTO MENU