@echo off
rem ���� �����樨 ���㬥��樨 � �ணࠬ���
rem �� �몥 Perl � ��. ���㬥���� �뢮����� 
rem � �⠭����� ��⮪ �뢮��.
rem ��������: �� ��㯯� 䠩��� 㤠����� ���, 
rem �஬� �������ਥ�, �⬥祭��� ������ "#".
rem Usage: perl_apache_doc.cmd <������� 䠩���>
FOR %%R IN (%1) DO perlbt perl_apache_doc %%R