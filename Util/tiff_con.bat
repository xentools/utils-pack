@echo off
rem ������� ���������� ��� ����� ������ ������������ ��������,
rem ������� �������� ��� ����� TIFF ��� ����������.
rem ���� ���� ������ ���� �����������
rem
rem ������������ Tiff ���� � ������� DjVu
cjb2 -clean %1.tif %1.djvu
rem
rem ��������������� "������" ���� common.djvu � Old.djvu
ren common.djvu old.djvu
rem
rem ������ ����� ���� common.djvu, ����������� � ����� old.djvu ���� %1.djvu
djvm -c common.djvu old.djvu %1.djvu
rem
rem ������� ����� old.djvu � %1.djvu
del old.djvu
del %1.djvu

