@echo off
rem �������� 䠩� �� ��ॢ��� ����� ᨬ�����
rem �ਭ���� �� ⨯����᪮� ����⪥, � ����� ᨬ�����,
rem �ਭ���� �� ����� ⥪��.
rem ���⠪�� �������:
rem > toText4DOS.bat {<ᯨ᮪ 䠩��� ��� 蠡�����>}(1-5)
rem
FOR %%R IN (%1 %2 %3 %4 %5) DO CALL perlbt.bat toText4DOS %%R %%R
rem END 
