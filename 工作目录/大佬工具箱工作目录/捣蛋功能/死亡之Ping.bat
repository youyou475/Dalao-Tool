@echo off
mode con: cols=40 lines=25
title IP������
:menu
color 0A
@echo.
@echo �q�������������r
@echo ����IP�������辶
@echo �t�������������s
@echo ========================================
set /p ip=������Է�IP����ַ��
@echo ========================================
@echo.
@echo �ﰴ�������ʼ����,�رմ���ֹͣ!��
pause >nul
cls
color 9F
@echo.
@echo �����ڹ���%ip%��!��
@echo.
@echo ========================================
@echo ����:ʹ�ö�̨����ͬʱ����Ч������!
@echo.
@echo "Request Timed Out"˵���Է��ܾ������㷢���������ݰ�,�������ԭ������ǶԷ�װ�з���ǽ��������!
@echo.
@echo "Bad IP address"˵�����IP��ַ����ַ�������!
@echo ========================================
@echo.
ping -t -l 65500 %ip%