VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form frmBRWTMITEM 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   5790
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   9030
   Icon            =   "frmBRWTMITEM.frx":0000
   KeyPreview      =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5790
   ScaleWidth      =   9030
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton cmdChoose 
      Caption         =   "Pilih"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   7680
      TabIndex        =   5
      Top             =   5280
      Width           =   1215
   End
   Begin VB.CommandButton cmdCancel 
      Caption         =   "Batal"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6360
      TabIndex        =   6
      Top             =   5280
      Width           =   1215
   End
   Begin VB.Frame fraSearch 
      Height          =   1335
      Left            =   120
      TabIndex        =   11
      Top             =   120
      Width           =   8775
      Begin VB.CommandButton cmdOptional 
         Caption         =   "Optional"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   7560
         TabIndex        =   3
         Top             =   360
         Width           =   1095
      End
      Begin VB.CommandButton cmdSearch 
         Caption         =   "Filter"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   7560
         TabIndex        =   4
         Top             =   840
         Width           =   1095
      End
      Begin VB.TextBox txtPartNumber 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   1320
         TabIndex        =   1
         Top             =   600
         Width           =   2535
      End
      Begin VB.TextBox txtName 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   1320
         TabIndex        =   2
         Top             =   960
         Width           =   6135
      End
      Begin VB.TextBox txtItemId 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   1320
         TabIndex        =   0
         Top             =   240
         Width           =   975
      End
      Begin VB.Label lblPartNumber 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Nomor Part"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   120
         TabIndex        =   8
         Top             =   600
         Width           =   990
      End
      Begin VB.Label lblName 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Nama"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   120
         TabIndex        =   9
         Top             =   960
         Width           =   510
      End
      Begin VB.Label lblItemId 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Kode"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   120
         TabIndex        =   7
         Top             =   240
         Width           =   450
      End
   End
   Begin MSDataGridLib.DataGrid dgdMain 
      Height          =   3615
      Left            =   120
      TabIndex        =   10
      TabStop         =   0   'False
      Top             =   1560
      Width           =   8775
      _ExtentX        =   15478
      _ExtentY        =   6376
      _Version        =   393216
      HeadLines       =   2
      RowHeight       =   20
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ColumnCount     =   2
      BeginProperty Column00 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column01 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      SplitCount      =   1
      BeginProperty Split0 
         BeginProperty Column00 
         EndProperty
         BeginProperty Column01 
         EndProperty
      EndProperty
   End
End
Attribute VB_Name = "frmBRWTMITEM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private rstMain As ADODB.Recordset

Private strParent As String
Private strVendor As String
Private strGroup As String
Private strCategory As String
Private strBrand As String
Private strUnity As String

Private blnParent As Boolean

Private Sub Form_Load()
    SetInitialization
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyReturn Then
        SendKeys "{TAB}"
    End If
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
    If blnParent Then
        Cancel = 1
    Else
        If frmTMITEM.Parent Then
            frmTMITEM.Parent = False
        ElseIf frmTMPRICELIST.Parent Then
            frmTMPRICELIST.Parent = False
        ElseIf frmTMITEMPRICE.Parent Then
            frmTMITEMPRICE.Parent = False
        ElseIf frmTMSTOCKINIT.Parent Then
            frmTMSTOCKINIT.Parent = False
        End If
    
        mdlDatabase.CloseRecordset rstMain
    End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Set frmBRWTMITEM = Nothing
End Sub

Private Sub txtItemId_GotFocus()
    mdlProcedures.GotFocus Me.txtItemId
End Sub

Private Sub txtPartNumber_GotFocus()
    mdlProcedures.GotFocus Me.txtPartNumber
End Sub

Private Sub txtName_GotFocus()
    mdlProcedures.GotFocus Me.txtName
End Sub

Private Sub cmdOptional_Click()
    If blnParent Then Exit Sub
    
    blnParent = True
    
    mdlProcedures.CornerWindows Me, , False
    
    mdlProcedures.ShowForm frmBRWTMITEMOPT, False, True
End Sub

Private Sub cmdSearch_Click()
    SetGrid
End Sub

Private Sub dgdMain_HeadClick(ByVal ColIndex As Integer)
    rstMain.Sort = rstMain.Fields(ColIndex).Name
    
    If rstMain.RecordCount > 0 Then
        If frmTMITEM.Parent Then
            frmTMITEM.ItemId = rstMain!ItemId
        End If
    End If
End Sub

Private Sub dgdMain_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
    If rstMain.RecordCount > 0 Then
        If frmTMITEM.Parent Then
            frmTMITEM.ItemId = rstMain!ItemId
        End If
    End If
End Sub

Private Sub cmdChoose_Click()
    If rstMain.RecordCount > 0 Then
        If frmTMPRICELIST.Parent Then
            frmTMPRICELIST.ItemId = Trim(rstMain!ItemId)
        ElseIf frmTMITEMPRICE.Parent Then
            frmTMITEMPRICE.ItemId = Trim(rstMain!ItemId)
        ElseIf frmTMSTOCKINIT.Parent Then
            frmTMSTOCKINIT.ItemIdText = rstMain!ItemId
        End If
    End If
    
    Unload Me
End Sub

Private Sub cmdCancel_Click()
    If frmTMITEM.Parent Then
        frmTMITEM.ItemId = strParent
    ElseIf frmTMPRICELIST.Parent Then
        frmTMPRICELIST.ItemId = strParent
    ElseIf frmTMITEMPRICE.Parent Then
        frmTMITEMPRICE.ItemId = strParent
    ElseIf frmTMSTOCKINIT.Parent Then
        frmTMSTOCKINIT.ItemIdText = strParent
    End If
    
    Unload Me
End Sub

Private Sub SetInitialization()
    mdlProcedures.CenterWindows Me, False
    
    Me.Caption = mdlText.strBRWTMITEM
    
    blnParent = False
    
    If frmTMITEM.Parent Then
        Me.txtItemId.Text = Trim(frmTMITEM.ItemId)
        Me.txtName.Text = Trim(frmTMITEM.ItemName)
        Me.txtPartNumber.Text = Trim(frmTMITEM.PartNumber)
    
        strParent = Trim(frmTMITEM.ItemId)
    ElseIf frmTMPRICELIST.Parent Then
        Me.txtItemId.Text = Trim(frmTMPRICELIST.ItemIdText)
        Me.txtName.Text = Trim(frmTMPRICELIST.ItemNameText)
        
        strParent = Trim(frmTMPRICELIST.ItemId)
    ElseIf frmTMITEMPRICE.Parent Then
        Me.txtItemId.Text = Trim(frmTMITEMPRICE.ItemIdText)
        Me.txtName.Text = Trim(frmTMITEMPRICE.ItemNameText)
        
        strParent = Trim(frmTMITEMPRICE.ItemId)
    ElseIf frmTMSTOCKINIT.Parent Then
        Me.txtItemId.Text = Trim(frmTMSTOCKINIT.ItemId)
        Me.txtName.Text = Trim(frmTMSTOCKINIT.ItemName)
        
        strParent = Trim(frmTMSTOCKINIT.ItemId)
    End If
    
    SetGrid
End Sub

Private Sub SetGrid()
    Dim strTableFirst As String
    Dim strTableSecond As String
    Dim strTableThird As String
    Dim strTableFourth As String
    Dim strTableFifth As String
    Dim strTableSixth As String
    Dim strTable As String
    
    strTableFirst = mdlTable.CreateTMITEM
    strTableSecond = mdlTable.CreateTMVENDOR
    strTableThird = mdlTable.CreateTMGROUP
    strTableFourth = mdlTable.CreateTMCATEGORY
    strTableFifth = mdlTable.CreateTMBRAND
    strTableSixth = mdlTable.CreateTMUNITY
    
    strTable = "(((((" & strTableFirst & " LEFT JOIN " & strTableSecond & _
        " ON " & strTableFirst & ".VendorId=" & strTableSecond & ".VendorId) LEFT JOIN " & strTableThird & _
        " ON " & strTableFirst & ".GroupId=" & strTableThird & ".GroupId) LEFT JOIN " & strTableFourth & _
        " ON " & strTableFirst & ".CategoryId=" & strTableFourth & ".CategoryId) LEFT JOIN " & strTableFifth & _
        " ON " & strTableFirst & ".BrandId=" & strTableFifth & ".BrandId) LEFT JOIN " & strTableSixth & _
        " ON " & strTableFirst & ".UnityId=" & strTableSixth & ".UnityId)"

    Dim strCriteria As String
    
    strCriteria = ""
    
    If Not Trim(Me.txtItemId.Text) = "" Then
        strCriteria = mdlProcedures.QueryLikeCriteria("ItemId", mdlProcedures.RepDupText(Me.txtItemId.Text))
    End If
    
    If Not Trim(Me.txtPartNumber.Text) = "" Then
        If Not Trim(strCriteria) = "" Then
            strCriteria = strCriteria & " AND "
        End If
        
        strCriteria = strCriteria & mdlProcedures.QueryLikeCriteria("PartNumber", mdlProcedures.RepDupText(Me.txtPartNumber.Text))
    End If
    
    If Not Trim(Me.txtName.Text) = "" Then
        If Not Trim(strCriteria) = "" Then
            strCriteria = strCriteria & " AND "
        End If
        
        strCriteria = strCriteria & mdlProcedures.QueryLikeCriteria(strTableFirst & ".Name", mdlProcedures.RepDupText(Me.txtName.Text))
    End If
    
    Dim strOptional(1) As String
    
    If Not Trim(strVendor) = "" Then
        strOptional(0) = mdlProcedures.SplitData(strVendor)
        strOptional(1) = mdlProcedures.SplitData(strVendor, 1)
        
        If Not Trim(strOptional(0)) = "" Then
            If Not Trim(strCriteria) = "" Then
                strCriteria = strCriteria & " AND "
            End If
            
            strCriteria = strCriteria & mdlProcedures.QueryLikeCriteria(strTableFirst & ".VendorId", mdlProcedures.RepDupText(strOptional(0)))
        End If
        
        If Not Trim(strOptional(1)) = "" Then
            If Not Trim(strCriteria) = "" Then
                strCriteria = strCriteria & " AND "
            End If
            
            strCriteria = strCriteria & mdlProcedures.QueryLikeCriteria(strTableSecond & ".Name", mdlProcedures.RepDupText(strOptional(1)))
        End If
    End If
    
    If Not Trim(strGroup) = "" Then
        strOptional(0) = mdlProcedures.SplitData(strGroup)
        strOptional(1) = mdlProcedures.SplitData(strGroup, 1)
        
        If Not Trim(strOptional(0)) = "" Then
            If Not Trim(strCriteria) = "" Then
                strCriteria = strCriteria & " AND "
            End If
            
            strCriteria = strCriteria & mdlProcedures.QueryLikeCriteria(strTableFirst & ".GroupId", mdlProcedures.RepDupText(strOptional(0)))
        End If
        
        If Not Trim(strOptional(1)) = "" Then
            If Not Trim(strCriteria) = "" Then
                strCriteria = strCriteria & " AND "
            End If
            
            strCriteria = strCriteria & mdlProcedures.QueryLikeCriteria(strTableThird & ".Name", mdlProcedures.RepDupText(strOptional(1)))
        End If
    End If
    
    If Not Trim(strCategory) = "" Then
        strOptional(0) = mdlProcedures.SplitData(strCategory)
        strOptional(1) = mdlProcedures.SplitData(strCategory, 1)
        
        If Not Trim(strOptional(0)) = "" Then
            If Not Trim(strCriteria) = "" Then
                strCriteria = strCriteria & " AND "
            End If
            
            strCriteria = strCriteria & mdlProcedures.QueryLikeCriteria(strTableFirst & ".CategoryId", mdlProcedures.RepDupText(strOptional(0)))
        End If
        
        If Not Trim(strOptional(1)) = "" Then
            If Not Trim(strCriteria) = "" Then
                strCriteria = strCriteria & " AND "
            End If
            
            strCriteria = strCriteria & mdlProcedures.QueryLikeCriteria(strTableFourth & ".Name", mdlProcedures.RepDupText(strOptional(1)))
        End If
    End If
    
    If Not Trim(strBrand) = "" Then
        strOptional(0) = mdlProcedures.SplitData(strBrand)
        strOptional(1) = mdlProcedures.SplitData(strBrand, 1)
        
        If Not Trim(strOptional(0)) = "" Then
            If Not Trim(strCriteria) = "" Then
                strCriteria = strCriteria & " AND "
            End If
            
            strCriteria = strCriteria & mdlProcedures.QueryLikeCriteria(strTableFirst & ".BrandId", mdlProcedures.RepDupText(strOptional(0)))
        End If
        
        If Not Trim(strOptional(1)) = "" Then
            If Not Trim(strCriteria) = "" Then
                strCriteria = strCriteria & " AND "
            End If
            
            strCriteria = strCriteria & mdlProcedures.QueryLikeCriteria(strTableFifth & ".Name", mdlProcedures.RepDupText(strOptional(1)))
        End If
    End If
    
    If Not Trim(strUnity) = "" Then
        strOptional(0) = mdlProcedures.SplitData(strUnity)
        strOptional(1) = mdlProcedures.SplitData(strUnity, 1)
        
        If Not Trim(strOptional(0)) = "" Then
            If Not Trim(strCriteria) = "" Then
                strCriteria = strCriteria & " AND "
            End If
            
            strCriteria = strCriteria & mdlProcedures.QueryLikeCriteria(strTableFirst & ".UnityId", mdlProcedures.RepDupText(strOptional(0)))
        End If
        
        If Not Trim(strOptional(1)) = "" Then
            If Not Trim(strCriteria) = "" Then
                strCriteria = strCriteria & " AND "
            End If
            
            strCriteria = strCriteria & mdlProcedures.QueryLikeCriteria(strTableSixth & ".Name", mdlProcedures.RepDupText(strOptional(1)))
        End If
    End If
    
    Set rstMain = mdlDatabase.OpenRecordset(mdlGlobal.conInventory, "ItemId, PartNumber, " & strTableFirst & ".Name, " & strTableFirst & ".UnityId", strTable, False, strCriteria, "ItemId ASC")
    
    If rstMain.RecordCount > 0 Then
        If frmTMITEM.Parent Then
            frmTMITEM.ItemId = rstMain!ItemId
        End If
    End If
    
    Set Me.dgdMain.DataSource = rstMain
    
    With Me.dgdMain
        .RowHeight = 500
        
        .Columns(0).Width = 1000
        .Columns(0).Locked = True
        .Columns(0).Caption = "Kode"
        .Columns(1).Width = 2500
        .Columns(1).Locked = True
        .Columns(1).Caption = "Nomor Part"
        .Columns(1).WrapText = True
        .Columns(2).Width = 3600
        .Columns(2).Locked = True
        .Columns(2).Caption = "Nama"
        .Columns(2).WrapText = True
        .Columns(3).Width = 1000
        .Columns(3).Locked = True
        .Columns(3).Caption = "Satuan"
    End With
End Sub

Public Property Get Parent() As Boolean
    Parent = blnParent
End Property

Public Property Get VendorOptional() As String
    VendorOptional = strVendor
End Property

Public Property Get GroupOptional() As String
    GroupOptional = strGroup
End Property

Public Property Get CategoryOptional() As String
    CategoryOptional = strCategory
End Property

Public Property Get BrandOptional() As String
    BrandOptional = strBrand
End Property

Public Property Get UnityOptional() As String
    UnityOptional = strUnity
End Property

Public Property Let Parent(ByVal blnEnable As Boolean)
    blnParent = blnEnable
    
    If Not blnEnable Then mdlProcedures.CenterWindows Me, False
End Property

Public Property Let VendorOptional(ByVal strValue As String)
    strVendor = strValue
End Property

Public Property Let GroupOptional(ByVal strValue As String)
    strGroup = strValue
End Property

Public Property Let CategoryOptional(ByVal strValue As String)
    strCategory = strValue
End Property

Public Property Let BrandOptional(ByVal strValue As String)
    strBrand = strValue
End Property

Public Property Let UnityOptional(ByVal strValue As String)
    strUnity = strValue
End Property
