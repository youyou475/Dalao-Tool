@echo off
title 大佬工具箱 V1.3.7
color f4
:home
cls
echo ===================
echo 欢迎使用大佬工具箱！
echo 当前使用版本：V1.3.7
echo 版本更新日期：2018年03月10日
echo 由youyou475开发并维护
echo ===================
echo 操作选项：
echo 1.Ping测试
echo 2.当前时间
echo 3.实用软件下载
echo 4.机器人聊天
echo 5.打开实用软件
echo 6.高级功能
echo 7.作者及版本
echo 8.变更配色
echo 9.浏览大佬工具箱GitHub项目
echo 10.反馈工具箱Bug
echo 更多选项：
echo 11.退出本工具箱
echo ===================
set /P xz=操作选择:
if /I "%xz%"=="1" goto pinghome
if /I "%xz%"=="2" goto nowtimehome
if /I "%xz%"=="3" goto apphome
if /I "%xz%"=="4" goto robothome
if /I "%xz%"=="5" goto ruanjianhome
if /I "%xz%"=="6" goto kinghome
if /I "%xz%"=="7" goto abouthome
if /I "%xz%"=="8" goto colorhome
if /I "%xz%"=="9" goto toolgithub
if /I "%xz%"=="10" goto reportbughome
if /I "%xz%"=="11" exit
:toolgithub
path=%path%; C:\Program Files\Internet Explorer\iexplore.exe
start iexplore https://github.com/youyou475/Dalao-Tool
goto home
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
echo 操作选项
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
if /I "%xz%"=="1" goto yingsuohome
if /I "%xz%"=="2" goto home
:yingsuohome
start 工作目录/大佬工具箱工作目录/工具/影梭/影梭.exe
goto ruanjianhome
:robothome
cls
start notepad 工作目录/大佬工具箱工作目录/聊天机器人帮助文档.txt
echo ===================
echo 欢迎使用机器人聊天功能
echo 请阅读帮助文档，以方便跟机器人聊天~
echo ===================
set /P xz=输入:
if /I "%xz%"=="你好" echo 答：你好，我是你的助手Lili，很高兴与你见面哦~
if /I "%xz%"=="现在几点了" echo 答：当前时间是：%date% %time%
if /I "%xz%"=="返回菜单" goto home
if /I "%xz%"=="你多大了" echo 答：我还小呢~干嘛问这种问题，人家会害羞的~
if /I "%xz%"=="下载百度网盘" goto baidunetdiskrobotdownload
if /I "%xz%"=="下载QQ" goto qqrobotdownload
if /I "%xz%"=="下载迅雷" goto xunleirobotdownload
if /I "%xz%"=="下载Notepad++" goto notepad++download
if /I "%xz%"=="打开帮助文档" start notepad 工作目录/大佬工具箱工作目录/聊天机器人帮助文档.txt
echo ===================
echo 请按空格键继续
pause>nul
goto robothome1
:robothome1
cls
echo ===================
echo 请阅读帮助文档，以方便跟机器人聊天~
echo ===================
set /P xz=输入:
if /I "%xz%"=="你好" echo 答：你好，我是你的助手Lili，很高兴与你见面哦~
if /I "%xz%"=="现在几点了" echo 答：当前时间是：%date% %time%
if /I "%xz%"=="返回菜单" goto home
if /I "%xz%"=="你多大了" echo 答：我还小呢~干嘛问这种问题，人家会害羞的~
if /I "%xz%"=="下载百度网盘" goto baidunetdiskrobotdownload
if /I "%xz%"=="下载QQ" goto qqrobotdownload
if /I "%xz%"=="下载迅雷" goto xunleirobotdownload
if /I "%xz%"=="下载Notepad++" goto notepad++download
if /I "%xz%"=="打开帮助文档" start notepad 工作目录/大佬工具箱工作目录/聊天机器人帮助文档.txt
echo ===================
echo 请按空格键继续
pause>nul
goto robothome1
:baidunetdiskrobotdownload
path=%path%; C:\Program Files\Internet Explorer\iexplore.exe
start iexplore http://issuecdn.baidupcs.com/issue/netdisk/yunguanjia/BaiduNetdisk_5.6.2.exe
goto robothome
:qqrobotdownload
path=%path%; C:\Program Files\Internet Explorer\iexplore.exe
start iexplore https://dldir1.qq.com/qqfile/qq/QQ8.9.4/21603/QQ8.9.4.exe
goto robothome
:xunleirobotdownload
path=%path%; C:\Program Files\Internet Explorer\iexplore.exe
start iexplore http://down.sandai.net/thunder9/Thunder9.1.39.880.exe
goto robothome
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
echo 5.4PDA论坛
echo 6.Flyme官网
echo 7.百度网盘
echo 8.youyou475博客
echo 9.192.168.0.1（常用路由器1）
echo 10.192.168.1.1（常用路由器2）
echo 11.192.168.31.1（小米路由器）
echo 更多选项：
echo 12.回到主菜单
echo ===================
set /P xz=操作选择:
if /I "%xz%"=="1" ping www.baidu.com
if /I "%xz%"=="2" ping cn.bing.com
if /I "%xz%"=="3" ping www.google.cn
if /I "%xz%"=="4" ping www.google.com.hk
if /I "%xz%"=="5" ping 4pda.ru
if /I "%xz%"=="6" ping www.flyme.cn
if /I "%xz%"=="7" ping pan.baidu.com
if /I "%xz%"=="8" ping youyou475.wang
if /I "%xz%"=="9" ping 192.168.0.1
if /I "%xz%"=="10" ping 192.168.1.1
if /I "%xz%"=="11" ping 192.168.31.1
if /I "%xz%"=="12" goto home
goto pinghome
:abouthome
cls
echo ===================
echo 欢迎使用作者及版本功能
echo ===================
echo 查看选项：
echo 1.查看本软件作者
echo 2.查看版本更新日志
echo 更多选项：
echo 3.回到主菜单
echo ===================
set /P xz=操作选择:
if /I "%xz%"=="1" goto authorhome
if /I "%xz%"=="2" goto versionhome
if /I "%xz%"=="3" goto home
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
:versionhome
cls
start notepad 工作目录/大佬工具箱工作目录/版本介绍/版本介绍.txt
goto abouthome
:apphome
cls
echo ===================
echo 欢迎使用实用软件下载功能
echo 软件源均为官方源或百度源，可放心下载使用
echo ===================
echo 软件选项：
echo 1.百度网盘（官方源，版本：5.7.2，更新于2017年11月16日）
echo 2.QQ（官方源，版本：8.9.6，更新于2017年11月27日）
echo 3.迅雷（官方源，版本：9.1.46.998，更新于2018年01月02日）
echo 4.Notepad++（百度源，版本：7.5.4，更新于2018年01月02日）
echo 更多选项：
echo 5.回到主菜单
echo ===================
set /P xz=操作选择:
if /I "%xz%"=="1" goto baidunetdiskdownload
if /I "%xz%"=="2" goto qqdownload
if /I "%xz%"=="3" goto xunleidownload
if /I "%xz%"=="4" goto notepad++download
if /I "%xz%"=="5" goto home
goto apphome
:baidunetdiskdownload
path=%path%; C:\Program Files\Internet Explorer\iexplore.exe
start iexplore http://issuecdn.baidupcs.com/issue/netdisk/yunguanjia/BaiduNetdisk_5.7.2.exe
goto apphome
:qqdownload
path=%path%; C:\Program Files\Internet Explorer\iexplore.exe
start iexplore https://dldir1.qq.com/qqfile/qq/QQ8.9.6/22427/QQ8.9.6.exe
goto apphome
:xunleidownload
path=%path%; C:\Program Files\Internet Explorer\iexplore.exe
start iexplore http://down.sandai.net/thunder9/Thunder9.1.46.998.exe
goto apphome
:notepad++download
path=%path%; C:\Program Files\Internet Explorer\iexplore.exe
start iexplore http://sw.bos.baidu.com/sw-search-sp/software/7cd4779d0c4ae/npp_7.5.4_Installer.exe
goto apphome
:colorhome
cls
echo ===================
echo 欢迎使用变更配色功能
echo 提供部分常用配色，更多配色请自行百度
echo ===================
echo 变更颜色选项：
echo 1.背景白字体绿
echo 2.背景白字体紫
echo 3.背景白字体红
echo 4.背景黑字体绿
echo 5.原配色
echo 更多选项：
echo 6.回到主菜单
echo ===================
set /P xz=操作选择:
if /I "%xz%"=="1" color fa
if /I "%xz%"=="2" color fd
if /I "%xz%"=="3" color fc
if /I "%xz%"=="4" color 0a
if /I "%xz%"=="5" color f4
if /I "%xz%"=="6" goto home
goto home