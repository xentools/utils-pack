@echo off
rem ��뢠�� ��⮪��� ।���� sed
rem ��ਯ�-䠩� �� �몥 Perl ������
rem ��室����� �� C:\Scripts\Sed
rem ���⠪�� �������:
rem > sedbat.bat <��� �ਯ�> [<ᯨ᮪ �८�ࠧ㥬�� 䠩���>]
rem
sed -f "C:\Scripts\Sed\%1.sh" "%2" > "%3"
