@echo off
rem ���� Y: (�� ������ ���� ᢮�����)
rem �����砥��� ��� ⥪�饣� ��⠫���
rem �������� subst Y: .
subst Y: .
rem ��뢠�� �������� Perl
rem ��ਯ�-䠩� �� �몥 Perl ������
rem ��室����� �� C:\Perl\user\PerlScripts
perl %SCRIPTS%\Perl\%1.pl %2 %3 %4 %5 %6 %7 %8 %9
REM ����塞 ��� Y:
subst Y: /D
