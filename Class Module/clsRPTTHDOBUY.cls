VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "clsRPTTHDOBUY"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Private Const DOID_COL As Integer = 1
Private Const DATE_COL As Integer = 2
Private Const POID_COL As Integer = 3
Private Const WAREHOUSENAME_COL As Integer = 4
Private Const TRANSPORTNUMBER_COL As Integer = 5

Private Const ITEMID_COL As Integer = 2
Private Const NAME_COL As Integer = 3
Private Const QTY_COL As Integer = 4
Private Const UNITYNAME_COL As Integer = 5

Private xlSheet As Excel.Worksheet

Private intRow As Integer

Private Sub Class_Initialize()
    mdlExcel.OpenExcel
End Sub

Public Sub ImportToExcel(ByRef rstHeader As ADODB.Recordset)
    If rstHeader Is Nothing Then Exit Sub
    
    mdlExcel.OpenWorkSheet xlSheet
    
    SetWidth
    
    FillTitle
    
    FillHeader rstHeader
End Sub

Private Sub SetWidth()
    intRow = 1
    
    With xlSheet
        .PageSetup.LeftMargin = 25
        .PageSetup.RightMargin = 25
        
        .Columns("A").ColumnWidth = 20
        .Columns("B").ColumnWidth = 16
        .Columns("C").ColumnWidth = 22
        .Columns("D").ColumnWidth = 16
        .Columns("E").ColumnWidth = 20
        
        .Rows(intRow).RowHeight = 125
    End With
End Sub

Private Sub FillTitle()
    On Local Error GoTo ErrHandler
    
    With xlSheet
        .Shapes.AddPicture mdlGlobal.strLogoImageText, True, True, 0, 0, 100, 100
        
        intRow = intRow + 2
        
        .Range("A" & intRow & ":A" & intRow + 1).MergeCells = True
        .Range("A" & intRow & ":E" & intRow + 1).HorizontalAlignment = xlLeft
        .Range("A" & intRow & ":E" & intRow + 1).VerticalAlignment = xlTop
        .Range("B" & intRow & ":E" & intRow + 1).WrapText = True
        .Range("A" & intRow & ":E" & intRow + 1).Font.Bold = True
        
        mdlExcel.FillEdge xlSheet, "A" & intRow & ":E" & intRow + 1
        
        .Cells(intRow, DOID_COL).Value = "Nomor DO"
        .Cells(intRow, DATE_COL).Value = "Tanggal"
        .Cells(intRow, POID_COL).Value = "Nomor PO"
        .Cells(intRow, WAREHOUSENAME_COL).Value = "Gudang"
        .Cells(intRow, TRANSPORTNUMBER_COL).Value = "Nomor Kendaraan"
        
        intRow = intRow + 1
        
        .Cells(intRow, ITEMID_COL).Value = "Kode"
        .Cells(intRow, NAME_COL).Value = "Nama"
        .Cells(intRow, QTY_COL).Value = "Qty"
        .Cells(intRow, UNITYNAME_COL).Value = "Satuan"
    End With
    
ErrHandler:
End Sub

Private Sub FillHeader(ByRef rstHeader As ADODB.Recordset)
    On Local Error GoTo ErrHandler
    
    With rstHeader
        Dim intFirst As Integer
        Dim intTemp As Integer
        
        intFirst = intRow + 1
    
        While Not .EOF
            If Not intRow = intFirst - 1 Then
                intRow = intRow + 1
                
                xlSheet.Rows(intRow).RowHeight = 5
                mdlExcel.FillEdge xlSheet, "A" & intRow & ":D" & intRow, False, , False, False, False, False
            End If
            
            intRow = intRow + 1
            
            intTemp = intRow
            
            xlSheet.Range("A" & intRow & ":E" & intRow).HorizontalAlignment = xlLeft
            
            xlSheet.Cells(intRow, DOID_COL).Value = "'" & Trim(.Fields("DOId").Value)
            xlSheet.Cells(intRow, DATE_COL).Value = mdlProcedures.FormatDate(.Fields("DODate").Value)
            xlSheet.Cells(intRow, DATE_COL).NumberFormat = "dd MMMM yyyy"
            xlSheet.Cells(intRow, WAREHOUSENAME_COL).Value = "'" & Trim(mdlDatabase.GetFieldData(mdlGlobal.conInventory, "Name", mdlTable.CreateTMWAREHOUSE, "WarehouseId='" & .Fields("WarehouseId").Value & "'"))
            xlSheet.Cells(intRow, POID_COL).Value = "'" & Trim(.Fields("POId").Value)
            xlSheet.Cells(intRow, TRANSPORTNUMBER_COL).Value = "'" & Trim(.Fields("TransportNumber").Value)
            
            xlSheet.Range("A" & intRow & ":E" & intRow).Select
            
            FillDetail .Fields("DOId").Value
            
            xlSheet.Range("A" & intTemp & ":E" & intRow).VerticalAlignment = xlTop
            xlSheet.Range("A" & intTemp & ":A" & intRow).MergeCells = True
            
            mdlExcel.FillEdge xlSheet, "A" & intTemp & ":E" & intRow, False, , False
            
            .MoveNext
        Wend
        
        If .RecordCount > 0 Then
            xlSheet.Range("A" & intFirst & ":E" & intFirst).Select
        End If
    End With
    
ErrHandler:
End Sub

Private Sub FillDetail(Optional ByVal strDOId As String = "")
    On Local Error GoTo ErrHandler
    
    Dim rstDetail As ADODB.Recordset
    
    Set rstDetail = mdlDatabase.OpenRecordset(mdlGlobal.conInventory, "*", mdlTable.CreateTDDOBUY, False, "DOId='" & strDOId & "'", "ItemId ASC")
    
    With rstDetail
        If .RecordCount > 0 Then
            xlSheet.Range("B" & intRow & ":E" & intRow).Borders(xlEdgeBottom).LineStyle = XlLineStyle.xlContinuous
        End If
        
        While Not .EOF
            intRow = intRow + 1
            
            xlSheet.Range("B" & intRow & ":D" & intRow).WrapText = True
            xlSheet.Range("B" & intRow & ":C" & intRow).HorizontalAlignment = xlLeft
            xlSheet.Range("D" & intRow & ":D" & intRow).HorizontalAlignment = xlRight
            xlSheet.Range("E" & intRow & ":E" & intRow).HorizontalAlignment = xlLeft
            
            xlSheet.Cells(intRow, ITEMID_COL).Value = "'" & Trim(.Fields("ItemId").Value)
            xlSheet.Cells(intRow, NAME_COL).Value = "'" & Trim(mdlDatabase.GetFieldData(mdlGlobal.conInventory, "Name", mdlTable.CreateTMITEM, "ItemId='" & .Fields("ItemId").Value & "'"))
            xlSheet.Cells(intRow, QTY_COL).Value = CStr(.Fields("Qty").Value)
            xlSheet.Cells(intRow, QTY_COL).NumberFormat = "#,##0"
            xlSheet.Cells(intRow, UNITYNAME_COL).Value = "'" & Trim( _
                mdlDatabase.GetFieldData(mdlGlobal.conInventory, "Name", mdlTable.CreateTMUNITY, "UnityId='" & _
                    mdlDatabase.GetFieldData(mdlGlobal.conInventory, "UnityId", mdlTable.CreateTMITEM, "ItemId='" & .Fields("ItemId").Value & "'") & "'"))
            
            .MoveNext
        Wend
    End With
    
ErrHandler:
End Sub

Private Sub Class_Terminate()
    mdlExcel.CloseExcel
End Sub