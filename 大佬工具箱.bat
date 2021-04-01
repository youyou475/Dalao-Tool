@echo off
title 大佬工具箱 V2.0.1
color f2
mode con: cols=50 lines=30
:home
cls
echo ===================
echo Welcome To Dalao Tool.
echo ===================
echo Version：V2.0.1
echo Update Date：2021.04.01
echo Author：youyou475
echo ===================
echo 操作选项：
echo 1.Ping测试
echo 2.当前时间
echo 3.下载实用软件
echo 4.打开实用软件
echo 5.捣蛋功能
echo 6.高级功能
echo 7.查看版本介绍
echo 8.变更配色
echo 9.浏览大佬工具箱GitHub项目
echo 10.浏览youyou475博客
echo 11.反馈工具箱Bug
echo 更多选项：
echo 12.退出本工具箱
echo ===================
set /P xz=操作选择:
if /I "%xz%"=="1" goto pinghome
if /I "%xz%"=="2" goto nowtimehome
if /I "%xz%"=="3" goto apphome
if /I "%xz%"=="4" goto ruanjianhome
if /I "%xz%"=="5" goto trickhome
if /I "%xz%"=="6" goto kinghome
if /I "%xz%"=="7" start notepad 工作目录/大佬工具箱工作目录/版本介绍/版本介绍.txt & goto home
if /I "%xz%"=="8" goto colorhome
if /I "%xz%"=="9" start microsoft-edge:https://github.com/youyou475/Dalao-Tool/ & goto home
if /I "%xz%"=="10" start microsoft-edge:https://youyou475.github.io/ & goto home
if /I "%xz%"=="11" goto reportbughome
if /I "%xz%"=="12" exit

:trickhome
cls
echo ===================
echo 欢迎使用捣蛋功能
echo 请谨慎使用本功能，可能会导致死机等操作
echo ===================
echo 捣蛋方式选项：
echo 1.无限打开CMD窗口
echo 2.死亡之Ping
echo 更多选项：
echo 3.回到主菜单
echo ===================
set /P xz=操作选择:
if /I "%xz%"=="1" call 工作目录/大佬工具箱工作目录/捣蛋功能/无限打开CMD窗口.bat
if /I "%xz%"=="2" call 工作目录/大佬工具箱工作目录/捣蛋功能/死亡之Ping.bat
if /I "%xz%"=="3" goto home

:reportbughome
cls
echo ===================
echo 欢迎使用反馈工具箱Bug功能
echo ===================
echo 反馈选项：
echo 1.QQ反馈
echo 2.邮箱反馈
echo 更多选项：
echo 3.回到主菜单
echo ===================
set /P xz=操作选择:
if /I "%xz%"=="1" goto qqreport
if /I "%xz%"=="2" goto emailreport
if /I "%xz%"=="3" goto home

:qqreport
cls
echo ===================
echo 感谢您使用QQ反馈~
echo 请联系QQ2508124146进行反馈
echo 加好友备注：大佬工具箱Bug反馈
echo 未写备注不予通过申请
echo ===================
echo 操作选项：
echo 1.回到反馈工具箱Bug功能
echo 2.回到主菜单
echo ===================
set /P xz=操作选择:
if /I "%xz%"=="1" goto reportbughome
if /I "%xz%"=="2" goto home

:emailreport
cls
echo ===================
echo 感谢您使用邮箱反馈~
echo 请发邮件至2508124146@qq.com
echo 邮件标题：大佬工具箱Bug反馈
echo 邮件内容：
echo 1.使用版本：
echo 2.反馈日期：
echo 3.Bug概述：
echo 4.Bug具体内容及复现概率：
echo 必须按格式填写，否则不予审核
echo ===================
echo 操作选项
echo 1.回到反馈工具箱Bug功能
echo 2.回到主菜单
echo ===================
set /P xz=操作选择:
if /I "%xz%"=="1" goto reportbughome
if /I "%xz%"=="2" goto home

:kinghome
cls
echo ===================
echo 欢迎使用高级功能
echo ===================
echo 功能选项：
echo 1.进入ROM工具箱
echo 2.注销系统（此功能慎用）
echo 3.关闭系统（此功能慎用，有一定延迟时间）
echo 4.放弃关闭系统（对关闭系统的解药）
echo 更多选项：
echo 5.回到主菜单
echo ===================
set /P xz=操作选择:
if /I "%xz%"=="1" call 工作目录/ROM工具箱工作目录/ROM工具箱.bat
if /I "%xz%"=="2" logoff
if /I "%xz%"=="3" shutdown -s
if /I "%xz%"=="4" shutdown -a
if /I "%xz%"=="5" goto home
goto kinghome

:ruanjianhome
cls
echo ===================
echo 欢迎使用打开实用软件功能
echo ===================
echo 打开选项：
echo 1.打开Shadowsocks
echo 更多选项：
echo 2.回到主菜单
echo ===================
set /P xz=操作选择:
if /I "%xz%"=="1" start 工作目录/大佬工具箱工作目录/工具/Shadowsocks/Shadowsocks.exe & goto ruanjianhome
if /I "%xz%"=="2" goto home

:nowtimehome
cls
echo 当前时间是：%date% %time%
echo 请按空格键继续
pause>nul
cls
echo ===================
echo 操作选项：
echo 1.回到主菜单
echo ===================
set /P xz=选择:
if /I "%xz%"=="1" goto home

:pinghome
cls
echo ===================
echo 欢迎使用Ping测试功能
echo ===================
echo 测试网站选项：
echo 1.百度
echo 2.必应中国
echo 3.谷歌中国
echo 4.谷歌香港（大陆地区需要科学上网）
echo 5.知乎
echo 6.百度网盘
echo 7.GitHub
echo 8.192.168.0.1（常用路由器1）
echo 9.192.168.1.1（常用路由器2）
echo 10.192.168.31.1（小米路由器）
echo 11.自由之Ping（输入需要Ping的网站）
echo 更多选项：
echo 12.回到主菜单
echo ===================
set /P xz=操作选择:
if /I "%xz%"=="1" ping www.baidu.com
if /I "%xz%"=="2" ping cn.bing.com
if /I "%xz%"=="3" ping www.google.cn
if /I "%xz%"=="4" ping www.google.com.hk
if /I "%xz%"=="5" ping www.zhihu.com
if /I "%xz%"=="6" ping pan.baidu.com
if /I "%xz%"=="7" ping github.com
if /I "%xz%"=="8" ping 192.168.0.1
if /I "%xz%"=="9" ping 192.168.1.1
if /I "%xz%"=="10" ping 192.168.31.1
if /I "%xz%"=="11" set /p ip=输入需要Ping的网址：& goto ipmode
if /I "%xz%"=="12" goto home
goto pinghome

:ipmode
ping -n 5 %ip%
pause
goto pinghome

:authorhome
cls
echo ===================
echo 作者：youyou475
echo 作者QQ：2508124146
echo ===================
echo 操作选项：
echo 1.回到主菜单
echo 2.回到作者及版本
echo ===================
set /P xz=选择:
if /I "%xz%"=="1" goto home
if /I "%xz%"=="2" goto abouthome

:apphome
cls
echo ===================
echo 欢迎使用实用软件下载功能
echo 软件源均为官方源，可放心下载使用
echo ===================
echo 软件选项：
echo 1.百度网盘（V7.2.6.2）
echo 2.QQ（V9.4.5）
echo 3.钉钉（V6.0.8）
echo 4.VSCode-X64（V1.54.3）
echo 更多选项：
echo 5.回到主菜单
echo ===================
set /P xz=操作选择:
if /I "%xz%"=="1" start microsoft-edge:https://issuecdn.baidupcs.com/issue/netdisk/yunguanjia/BaiduNetdisk_7.2.6.2.exe & goto apphome
if /I "%xz%"=="2" start microsoft-edge:https://down.qq.com/qqweb/PCQQ/PCQQ_EXE/PCQQ2021.exe & goto apphome
if /I "%xz%"=="3" start microsoft-edge:https://dtapp-pub.dingtalk.com/dingtalk-desktop/win_installer/Release/DingTalk_v6.0.8.31502.exe & goto apphome
if /I "%xz%"=="4" start microsoft-edge:https://az764295.vo.msecnd.net/stable/2b9aebd5354a3629c3aba0a5f5df49f43d6689f8/VSCodeUserSetup-x64-1.54.3.exe & goto apphome
if /I "%xz%"=="5" goto home

:colorhome
cls
echo ===================
echo 欢迎使用变更配色功能
echo 提供部分常用配色
echo ===================
echo 变更颜色选项：
echo 1.背景白字体棕
echo 2.背景白字体紫
echo 3.背景白字体红
echo 4.背景黑字体绿
echo 5.原配色（背景白字体绿）
echo 更多选项：
echo 6.回到主菜单
echo ===================
set /P xz=操作选择:
if /I "%xz%"=="1" color f9
if /I "%xz%"=="2" color fd
if /I "%xz%"=="3" color fc
if /I "%xz%"=="4" color 0a
if /I "%xz%"=="5" color f2
if /I "%xz%"=="6" goto home
goto colorhome