::::::::::::::::::::::::::::::::::::::::::::
:: Help HS_Packet (v1.0)                  ::
:: (c) HACSoft, 2005                      ::
:: Programming Akatov Aleksej aka Arigato ::
:: Site: http://my-cms.jino-net.ru        ::
::::::::::::::::::::::::::::::::::::::::::::

@echo off
hs_window 80 25
title HS_Packet (v1.0)
mode con codepage select=1251>nul
hs_color 7 1
cls
hs_color 14 2
hs_echo "                 ������� �� �������� ������ HS_Packet (v1.0)                    "
hs_color 7 1
echo.
echo ������� ������ ������������� ��� ����������� ���������� ������������
echo � ���������� ��� bat (cmd) ������.
echo.
echo �������� ��������� �������:
echo.
hs_color 4
hs_echo " 0. "
hs_color 15
hs_echo "HS_BEEP    "
hs_color 7
echo - ������������ ����� ���������� �������
hs_color 4
hs_echo " 1. "
hs_color 15
hs_echo "HS_PLAY    "
hs_color 7
echo - ������������ WAV-�����
hs_color 4
hs_echo " 2. "
hs_color 15
hs_echo "HS_DELAY   "
hs_color 7
echo - �������� ���������� ���������
hs_color 4
hs_echo " 3. "
hs_color 15
hs_echo "HS_MESSAGE "
hs_color 7
echo - ����� ��������� � ��������� ����
hs_color 4
hs_echo " 4. "
hs_color 15
hs_echo "HS_EXEC    "
hs_color 7
echo - ������ ��������� � ��������� ������
hs_color 4
hs_echo " 5. "
hs_color 15
hs_echo "HS_WINDOW  "
hs_color 7
echo - ��������� �������� ���� �������
hs_color 4
hs_echo " 6. "
hs_color 15
hs_echo "HS_READKEY "
hs_color 7
echo - ������ ������� � ����������
hs_color 4
hs_echo " 7. "
hs_color 15
hs_echo "HS_COLOR   "
hs_color 7
echo - ��������� ����� ������ � ����
hs_color 4
hs_echo " 8. "
hs_color 15
hs_echo "HS_POS     "
hs_color 7
echo - ��������� ������� ���������� �������
hs_color 4
hs_echo " 9. "
hs_color 15
hs_echo "HS_ECHO    "
hs_color 7
echo - ����� ��������� � �������� ���������
echo.
echo ��� �� �������� ����� ��������� ������� �� ��������:
echo ������� ����� �� ����������, ��������������� ������ �������.
echo.
echo ������� ��� �� �������� �� �������: ���_������� /?
echo ��������: HS_COLOR /? - �������� ������� �� ������� HS_COLOR.
echo.
hs_echo "��� ������ ������� ������� Esc."
:wait
hs_readkey
if %errorlevel%==48 hs_beep /?
if %errorlevel%==49 hs_play /?
if %errorlevel%==50 hs_delay /?
if %errorlevel%==51 hs_message /?
if %errorlevel%==52 hs_exec /?
if %errorlevel%==53 hs_window /?
if %errorlevel%==54 hs_readkey /?
if %errorlevel%==55 hs_color /?
if %errorlevel%==56 hs_pos /?
if %errorlevel%==57 hs_echo /?
if %errorlevel%==27 goto end
goto wait               
:end
mode con codepage select=866>nul
hs_message "��������� ���������� ������ HS_Packet � ���������?" "http://my-cms.jino-net.ru" q yesno
if %errorlevel%==6 start explorer "http://my-cms.jino-net.ru/index.php?cap=hsp"
