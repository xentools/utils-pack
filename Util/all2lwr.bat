@echo off
rem �������� 䠩� �� ��ॢ��� 䠩���
rem �⬥祭��� � 蠡����,
rem � ������ ॣ����
rem ���⠪�� �������:
rem > all2lwr.bat <��� 䠩�� ��� 蠡���>
rem
FOR  %%R IN (%1) DO CALL perlbt.bat toLowerName %%R
rem END
