@echo off
rem �������� 䠩� �� ��ॢ��� 䠩���
rem �⬥祭��� � 蠡����,
rem � ���孨� ॣ����
rem ���⠪�� �������:
rem > all2upr.bat <��� 䠩�� ��� 蠡���>
rem
FOR  %%R IN (%1) DO CALL perlbt.bat toUpperName %%R
rem END
