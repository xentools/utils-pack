@echo off
rem engdict.bat
rem ��������� ������������� ��� ����������� ���������� �������
rem �� �������� "������� � ����������" �����
rem Usage: alldict[.bat] <filenam�>
freqdic.exe %1 > "Test.dic.txt"
WScript "%UTIL%\FromTxtDicToExcel.vbs"