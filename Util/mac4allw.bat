@echo off
rem ��������� ����, ������������� ��� 
rem ������� Multi-Edit 8.0 c �����������
rem *.S � *.SH � ������� ��������.
rem
rem ��� ����� ������ ��������� �������
rem ������������ ����� cmacwin.bat
FOR  %%R IN ("*.s" "*.SH") DO CALL CMACWIN.BAT %%R
rem END
