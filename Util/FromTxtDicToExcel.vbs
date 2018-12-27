'*******************************************************************
' ���: 		FromTxtDicToExcel.vbs
' ����: 	VBScript                                                  
' ��������: 	������ ����� �� ����� "Test.dic.txt" �
'		��������� � � ������ Excel
'*******************************************************************
Option Explicit
                            	
Dim XL  ' ��������� ���������� Excel

Dim FSO,F,TextStream,s, junk, Item, index, curindex  '��������� ����������
Dim iRow, iCol, iRows, iCols ' ������ � �������
Dim Result ' �������������� ������ (������������ ��� �������)
' �������������� ���������
Const ForReading = 1, ForWriting = 2, TristateUseDefault = -2
Const xlCenter = 3, xlTop = -1, xlSolid = 0

'������� ������-���������� Microsoft Excel	
Set XL=WScript.CreateObject("Excel.Application")
'������ ���� Microsoft Excel �������
XL.Visible=true
'��������� ����� ������� �����
XL.WorkBooks.Add
'������������� ������ ������ �������
XL.Columns(1).ColumnWidth = 10
XL.Columns(2).ColumnWidth = 40
XL.Columns(3).ColumnWidth = 10
XL.Columns(4).ColumnWidth = 10

' ������� ������ FileSystemObject
Set FSO=WScript.CreateObject("Scripting.FileSystemObject")
' ������� ������ File ��� ����� "Test.dic.txt"
set F=FSO.GetFile("Test.dic.txt")
' ������� ������ TextStream (���� ����������� ��� ������)
Set TextStream=F.OpenAsTextStream(ForReading, TristateUseDefault)
iRow = 1 ' ������������� ���������� iRow (���)
iRows = iRow
iCols = 1
Result ="" '������� �������������� ������ -- ������
' ���� ���� �� ����� �����
Do
	' ��������� ������ �� �����
	s=TextStream.ReadLine
' ������ �������. ����� ������
'	WScript.Echo "C����� �� �����:" & vbCrLf & s
' ����� �������
	' �������������
	index = Len(s)+1
	Item=""
	curindex = 1
	iCol = 1
' ���� ���� �� ���������� ������ ������
	While index <> curindex
		index = NextNumItem( curindex )
		curindex = index
		index = Len(s)+1
' � ���� ���� ����� ������� ����������� ���������� Item. ������ �����
		Result = Result & "Item( " & iRow & ", " & iCol & " ) = " & Item & ". " & vbCrLf
		XL.Cells(iRow,iCol).Value=Item
		iCol = iCol + 1
		if iCols < iCol Then iCols = iCol
' ����� ����� �����������
		Item = ""
	Wend
	' �������� �� ��������� ����� (����� ������ ������)
	iRow = iRow + 1
	If iRows < iRow Then iRows = iRow
Loop While StrComp(s, "", 0)
' ������ �������. ����� ������
WScript.Echo "��������� ������: " & iRows-2 & ", ��������� �������: " & iCols-1
' WScript.Echo Result
' ����� �������

' ��������� ���� 
TextStream.Close
    XL.Range("A1:D1").Select
    With XL.Selection.Font
        .Name = "Arial"
        .Size = 11
        .Strikethrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
    End With
    XL.Selection.Font.Bold = True
    With Xl.Selection
        .HorizontalAlignment = xlCenter
        .WrapText = True
        .Orientation = 0
        .AddIndent = False
        .IndentLevel = 0
        .ShrinkToFit = False
        .MergeCells = False
    End With
    With XL.Selection.Interior
        .Pattern = xlSolid
        .Color = 13434879
    End With
    XL.Selection.AutoFilter

'*************  ����� ************************************************
'*********************************************************************
' �������: 	NextNumItem 
' ���� 		VBScript
' ��������:	��������� ���������� ��������� ������ � �������� �
' 		���������, ������������ ������� `;`. ��� ���� �����
'		`"` ������������. �������� ������������ ��������
'		������� ��������� � ������.
' ********************************************************************
Function NextNumItem(OLdNumItem)
' ����������� ����������
	Dim i, slen, tmp
' ����������� ����� �������� ��������� ����������
	slen=Len(s) 
' ������������� �������
	i= OldNumItem
' ���� ���� ��������� ������ �� ����� `;` ��� �� ��������� ����� ������
	Do
' ���� ��������� ������ �� s
		tmp=Mid(s,i,1)
' ������ �������
'	WScript.Echo "tmp = "  & tmp
' ����� �������
' ����������� ������ �� �������
		i=i+1
' ���� ������ �� s �� ����� `"` ��� ';', ��������� ��� � Item
		if tmp <> ";" AND tmp <> Chr(34) Then 
			Item=Item & tmp
		end if
	Loop Until tmp=";" OR i > slen + 1
' ����� �����
' ������ �������
'	WScript.Echo "Item = "  & Item
' ����� �������
	if i > slen + 1 Then i = slen + 1
' ����������� ������ ������
	NextNumItem = i
End Function
'*************  ����� ************************************************
