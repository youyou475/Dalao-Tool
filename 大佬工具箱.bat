@echo off
title ���й����� V1.3.7
color f4
:home
cls
echo ===================
echo ��ӭʹ�ô��й����䣡
echo ��ǰʹ�ð汾��V1.3.7
echo �汾�������ڣ�2018��03��10��
echo ��youyou475������ά��
echo ===================
echo ����ѡ�
echo 1.Ping����
echo 2.��ǰʱ��
echo 3.ʵ���������
echo 4.����������
echo 5.��ʵ�����
echo 6.�߼�����
echo 7.���߼��汾
echo 8.�����ɫ
echo 9.������й�����GitHub��Ŀ
echo 10.����������Bug
echo ����ѡ�
echo 11.�˳���������
echo ===================
set /P xz=����ѡ��:
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
echo ����ѡ��
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
if /I "%xz%"=="1" goto yingsuohome
if /I "%xz%"=="2" goto home
:yingsuohome
start ����Ŀ¼/���й����乤��Ŀ¼/����/Ӱ��/Ӱ��.exe
goto ruanjianhome
:robothome
cls
start notepad ����Ŀ¼/���й����乤��Ŀ¼/��������˰����ĵ�.txt
echo ===================
echo ��ӭʹ�û��������칦��
echo ���Ķ������ĵ����Է��������������~
echo ===================
set /P xz=����:
if /I "%xz%"=="���" echo ����ã������������Lili���ܸ����������Ŷ~
if /I "%xz%"=="���ڼ�����" echo �𣺵�ǰʱ���ǣ�%date% %time%
if /I "%xz%"=="���ز˵�" goto home
if /I "%xz%"=="������" echo ���һ�С��~�������������⣬�˼һẦ�ߵ�~
if /I "%xz%"=="���ذٶ�����" goto baidunetdiskrobotdownload
if /I "%xz%"=="����QQ" goto qqrobotdownload
if /I "%xz%"=="����Ѹ��" goto xunleirobotdownload
if /I "%xz%"=="����Notepad++" goto notepad++download
if /I "%xz%"=="�򿪰����ĵ�" start notepad ����Ŀ¼/���й����乤��Ŀ¼/��������˰����ĵ�.txt
echo ===================
echo �밴�ո������
pause>nul
goto robothome1
:robothome1
cls
echo ===================
echo ���Ķ������ĵ����Է��������������~
echo ===================
set /P xz=����:
if /I "%xz%"=="���" echo ����ã������������Lili���ܸ����������Ŷ~
if /I "%xz%"=="���ڼ�����" echo �𣺵�ǰʱ���ǣ�%date% %time%
if /I "%xz%"=="���ز˵�" goto home
if /I "%xz%"=="������" echo ���һ�С��~�������������⣬�˼һẦ�ߵ�~
if /I "%xz%"=="���ذٶ�����" goto baidunetdiskrobotdownload
if /I "%xz%"=="����QQ" goto qqrobotdownload
if /I "%xz%"=="����Ѹ��" goto xunleirobotdownload
if /I "%xz%"=="����Notepad++" goto notepad++download
if /I "%xz%"=="�򿪰����ĵ�" start notepad ����Ŀ¼/���й����乤��Ŀ¼/��������˰����ĵ�.txt
echo ===================
echo �밴�ո������
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
echo 5.4PDA��̳
echo 6.Flyme����
echo 7.�ٶ�����
echo 8.youyou475����
echo 9.192.168.0.1������·����1��
echo 10.192.168.1.1������·����2��
echo 11.192.168.31.1��С��·������
echo ����ѡ�
echo 12.�ص����˵�
echo ===================
set /P xz=����ѡ��:
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
echo ��ӭʹ�����߼��汾����
echo ===================
echo �鿴ѡ�
echo 1.�鿴���������
echo 2.�鿴�汾������־
echo ����ѡ�
echo 3.�ص����˵�
echo ===================
set /P xz=����ѡ��:
if /I "%xz%"=="1" goto authorhome
if /I "%xz%"=="2" goto versionhome
if /I "%xz%"=="3" goto home
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
:versionhome
cls
start notepad ����Ŀ¼/���й����乤��Ŀ¼/�汾����/�汾����.txt
goto abouthome
:apphome
cls
echo ===================
echo ��ӭʹ��ʵ��������ع���
echo ���Դ��Ϊ�ٷ�Դ��ٶ�Դ���ɷ�������ʹ��
echo ===================
echo ���ѡ�
echo 1.�ٶ����̣��ٷ�Դ���汾��5.7.2��������2017��11��16�գ�
echo 2.QQ���ٷ�Դ���汾��8.9.6��������2017��11��27�գ�
echo 3.Ѹ�ף��ٷ�Դ���汾��9.1.46.998��������2018��01��02�գ�
echo 4.Notepad++���ٶ�Դ���汾��7.5.4��������2018��01��02�գ�
echo ����ѡ�
echo 5.�ص����˵�
echo ===================
set /P xz=����ѡ��:
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
echo ��ӭʹ�ñ����ɫ����
echo �ṩ���ֳ�����ɫ��������ɫ�����аٶ�
echo ===================
echo �����ɫѡ�
echo 1.������������
echo 2.������������
echo 3.�����������
echo 4.������������
echo 5.ԭ��ɫ
echo ����ѡ�
echo 6.�ص����˵�
echo ===================
set /P xz=����ѡ��:
if /I "%xz%"=="1" color fa
if /I "%xz%"=="2" color fd
if /I "%xz%"=="3" color fc
if /I "%xz%"=="4" color 0a
if /I "%xz%"=="5" color f4
if /I "%xz%"=="6" goto home
goto home