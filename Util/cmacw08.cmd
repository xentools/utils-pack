@echo off
rem ��������� ����, ������������� �������� ����
rem �������� ��������� Multi Edit �� ��������� ��������.
rem �������� ������ ���������� � �������
rem C:\PROGRA~1\MULTIE~1 (=%MEPATH%), ����� ���������
rem ����� ���������� � ������� %MEPATH%\SRC, ��������������
rem ������ -- � ����� %MEPATH%\MAC, ��������� �����
rem ������������ ����������� ����� � �������� � 
rem ��� �������������� �������� ����� ���������� �����.
rem "%MEPATH%\cmacwin.exe" %1 -P%MEPATH%\MAC -I%MEPATH%\SRC -O%MEPATH%\CONFIG\MEERR00C.TMP -W
rem %MEPATH%\cmacwin.exe %1
"C:\Program files\Multi-Edit 2008\CmacWin.exe" "%1" -P"C:\Program Files\Multi-Edit 2008\Mac" -I"C:\Program Files\Multi-Edit 2008\Src" -O"C:\Program Files\Multi-Edit 2008\Config\MEERR00.TMP" -WE -#_Debug_
