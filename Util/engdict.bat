@echo off
rem engdict.bat
rem ��������� ������������� ��� ����������� ���������� �������
rem ����������� ����� �� �������� "������� � ����������" �����
rem Usage: engdict[.bat] <filenam�>
%UTIL%\engfreqdic32.exe %1 > "Test.dic.txt"
WScript "%UTIL%\FromTxtDicToExcel.vbs"