@echo off
title ���й����� V2.0.1
color f2
mode con: cols=50 lines=30
:home
cls
echo ===================
echo Welcome To Dalao Tool.
echo ===================
echo Version��V2.0.1
echo Update Date��2021.04.01
echo Author��youyou475
echo ===================
echo ����ѡ�
echo 1.Ping����
echo 2.��ǰʱ��
echo 3.����ʵ�����
echo 4.��ʵ�����
echo 5.��������
echo 6.�߼�����
echo 7.�鿴�汾����
echo 8.�����ɫ
echo 9.������й�����GitHub��Ŀ
echo 10.���youyou475����
echo 11.����������Bug
echo ����ѡ�
echo 12.�˳���������
echo ===================
set /P xz=����ѡ��:
if /I "%xz%"=="1" goto pinghome
if /I "%xz%"=="2" goto nowtimehome
if /I "%xz%"=="3" goto apphome
if /I "%xz%"=="4" goto ruanjianhome
if /I "%xz%"=="5" goto trickhome
if /I "%xz%"=="6" goto kinghome
if /I "%xz%"=="7" start notepad ����Ŀ¼/���й����乤��Ŀ¼/�汾����/�汾����.txt & goto home
if /I "%xz%"=="8" goto colorhome
if /I "%xz%"=="9" start microsoft-edge:https://github.com/youyou475/Dalao-Tool/ & goto home
if /I "%xz%"=="10" start microsoft-edge:https://youyou475.github.io/ & goto home
if /I "%xz%"=="11" goto reportbughome
if /I "%xz%"=="12" exit

:trickhome
cls
echo ===================
echo ��ӭʹ�õ�������
echo �����ʹ�ñ����ܣ����ܻᵼ�������Ȳ���
echo ===================
echo ������ʽѡ�
echo 1.���޴�CMD����
echo 2.����֮Ping
echo ����ѡ�
echo 3.�ص����˵�
echo ===================
set /P xz=����ѡ��:
if /I "%xz%"=="1" call ����Ŀ¼/���й����乤��Ŀ¼/��������/���޴�CMD����.bat
if /I "%xz%"=="2" call ����Ŀ¼/���й����乤��Ŀ¼/��������/����֮Ping.bat
if /I "%xz%"=="3" goto home

:reportbughome
cls
echo ===================
echo ��ӭʹ�÷���������Bug����
echo ===================
echo ����ѡ�
echo 1.QQ����
echo 2.���䷴��
echo ����ѡ�
echo 3.�ص����˵�
echo ===================
set /P xz=����ѡ��:
if /I "%xz%"=="1" goto qqreport
if /I "%xz%"=="2" goto emailreport
if /I "%xz%"=="3" goto home

:qqreport
cls
echo ===================
echo ��л��ʹ��QQ����~
echo ����ϵQQ2508124146���з���
echo �Ӻ��ѱ�ע�����й�����Bug����
echo δд��ע����ͨ������
echo ===================
echo ����ѡ�
echo 1.�ص�����������Bug����
echo 2.�ص����˵�
echo ===================
set /P xz=����ѡ��:
if /I "%xz%"=="1" goto reportbughome
if /I "%xz%"=="2" goto home

:emailreport
cls
echo ===================
echo ��л��ʹ�����䷴��~
echo �뷢�ʼ���2508124146@qq.com
echo �ʼ����⣺���й�����Bug����
echo �ʼ����ݣ�
echo 1.ʹ�ð汾��
echo 2.�������ڣ�
echo 3.Bug������
echo 4.Bug�������ݼ����ָ��ʣ�
echo ���밴��ʽ��д�����������
echo ===================
echo ����ѡ��
echo 1.�ص�����������Bug����
echo 2.�ص����˵�
echo ===================
set /P xz=����ѡ��:
if /I "%xz%"=="1" goto reportbughome
if /I "%xz%"=="2" goto home

:kinghome
cls
echo ===================
echo ��ӭʹ�ø߼�����
echo ===================
echo ����ѡ�
echo 1.����ROM������
echo 2.ע��ϵͳ���˹������ã�
echo 3.�ر�ϵͳ���˹������ã���һ���ӳ�ʱ�䣩
echo 4.�����ر�ϵͳ���Թر�ϵͳ�Ľ�ҩ��
echo ����ѡ�
echo 5.�ص����˵�
echo ===================
set /P xz=����ѡ��:
if /I "%xz%"=="1" call ����Ŀ¼/ROM�����乤��Ŀ¼/ROM������.bat
if /I "%xz%"=="2" logoff
if /I "%xz%"=="3" shutdown -s
if /I "%xz%"=="4" shutdown -a
if /I "%xz%"=="5" goto home
goto kinghome

:ruanjianhome
cls
echo ===================
echo ��ӭʹ�ô�ʵ���������
echo ===================
echo ��ѡ�
echo 1.��Shadowsocks
echo ����ѡ�
echo 2.�ص����˵�
echo ===================
set /P xz=����ѡ��:
if /I "%xz%"=="1" start ����Ŀ¼/���й����乤��Ŀ¼/����/Shadowsocks/Shadowsocks.exe & goto ruanjianhome
if /I "%xz%"=="2" goto home

:nowtimehome
cls
echo ��ǰʱ���ǣ�%date% %time%
echo �밴�ո������
pause>nul
cls
echo ===================
echo ����ѡ�
echo 1.�ص����˵�
echo ===================
set /P xz=ѡ��:
if /I "%xz%"=="1" goto home

:pinghome
cls
echo ===================
echo ��ӭʹ��Ping���Թ���
echo ===================
echo ������վѡ�
echo 1.�ٶ�
echo 2.��Ӧ�й�
echo 3.�ȸ��й�
echo 4.�ȸ���ۣ���½������Ҫ��ѧ������
echo 5.֪��
echo 6.�ٶ�����
echo 7.GitHub
echo 8.192.168.0.1������·����1��
echo 9.192.168.1.1������·����2��
echo 10.192.168.31.1��С��·������
echo 11.����֮Ping��������ҪPing����վ��
echo ����ѡ�
echo 12.�ص����˵�
echo ===================
set /P xz=����ѡ��:
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
if /I "%xz%"=="11" set /p ip=������ҪPing����ַ��& goto ipmode
if /I "%xz%"=="12" goto home
goto pinghome

:ipmode
ping -n 5 %ip%
pause
goto pinghome

:authorhome
cls
echo ===================
echo ���ߣ�youyou475
echo ����QQ��2508124146
echo ===================
echo ����ѡ�
echo 1.�ص����˵�
echo 2.�ص����߼��汾
echo ===================
set /P xz=ѡ��:
if /I "%xz%"=="1" goto home
if /I "%xz%"=="2" goto abouthome

:apphome
cls
echo ===================
echo ��ӭʹ��ʵ��������ع���
echo ���Դ��Ϊ�ٷ�Դ���ɷ�������ʹ��
echo ===================
echo ���ѡ�
echo 1.�ٶ����̣�V7.2.6.2��
echo 2.QQ��V9.4.5��
echo 3.������V6.0.8��
echo 4.VSCode-X64��V1.54.3��
echo ����ѡ�
echo 5.�ص����˵�
echo ===================
set /P xz=����ѡ��:
if /I "%xz%"=="1" start microsoft-edge:https://issuecdn.baidupcs.com/issue/netdisk/yunguanjia/BaiduNetdisk_7.2.6.2.exe & goto apphome
if /I "%xz%"=="2" start microsoft-edge:https://down.qq.com/qqweb/PCQQ/PCQQ_EXE/PCQQ2021.exe & goto apphome
if /I "%xz%"=="3" start microsoft-edge:https://dtapp-pub.dingtalk.com/dingtalk-desktop/win_installer/Release/DingTalk_v6.0.8.31502.exe & goto apphome
if /I "%xz%"=="4" start microsoft-edge:https://az764295.vo.msecnd.net/stable/2b9aebd5354a3629c3aba0a5f5df49f43d6689f8/VSCodeUserSetup-x64-1.54.3.exe & goto apphome
if /I "%xz%"=="5" goto home

:colorhome
cls
echo ===================
echo ��ӭʹ�ñ����ɫ����
echo �ṩ���ֳ�����ɫ
echo ===================
echo �����ɫѡ�
echo 1.������������
echo 2.������������
echo 3.�����������
echo 4.������������
echo 5.ԭ��ɫ�������������̣�
echo ����ѡ�
echo 6.�ص����˵�
echo ===================
set /P xz=����ѡ��:
if /I "%xz%"=="1" color f9
if /I "%xz%"=="2" color fd
if /I "%xz%"=="3" color fc
if /I "%xz%"=="4" color 0a
if /I "%xz%"=="5" color f2
if /I "%xz%"=="6" goto home
goto colorhome