VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomct2.ocx"
Begin VB.Form frmTHSOSELL 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   7755
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   11430
   Icon            =   "frmTHSOSELL.frx":0000
   KeyPreview      =   -1  'True
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   7755
   ScaleWidth      =   11430
   ShowInTaskbar   =   0   'False
   Begin VB.Frame fraNotes 
      Height          =   5655
      Left            =   9120
      TabIndex        =   36
      Top             =   1200
      Width           =   2175
      Begin VB.TextBox txtDisc 
         Alignment       =   1  'Right Justify
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
         Left            =   120
         MaxLength       =   5
         TabIndex        =   8
         Top             =   600
         Width           =   735
      End
      Begin VB.TextBox txtTax 
         Alignment       =   1  'Right Justify
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
         Left            =   120
         MaxLength       =   5
         TabIndex        =   9
         Top             =   1920
         Width           =   735
      End
      Begin VB.ComboBox cmbCurrencyId 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   120
         TabIndex        =   10
         Top             =   3120
         Width           =   975
      End
      Begin VB.CommandButton cmdCurrencyId 
         Caption         =   "..."
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
         Left            =   1560
         TabIndex        =   13
         TabStop         =   0   'False
         Top             =   3120
         Width           =   375
      End
      Begin VB.Label txtSubTotal 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H00C0FFFF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   240
         Left            =   120
         TabIndex        =   29
         Top             =   4440
         Width           =   1860
      End
      Begin VB.Label lblSubTotal 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Sub Total"
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
         TabIndex        =   28
         Top             =   4080
         Width           =   825
      End
      Begin VB.Label lblDisc 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Diskon"
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
         Index           =   0
         Left            =   120
         TabIndex        =   21
         Top             =   240
         Width           =   600
      End
      Begin VB.Label lblTax 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "PPN"
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
         Index           =   0
         Left            =   120
         TabIndex        =   24
         Top             =   1560
         Width           =   405
      End
      Begin VB.Label lblTotal 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Total"
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
         TabIndex        =   30
         Top             =   4920
         Width           =   420
      End
      Begin VB.Label lblDisc 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "%"
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
         Index           =   1
         Left            =   960
         TabIndex        =   22
         Top             =   600
         Width           =   180
      End
      Begin VB.Label lblDisc 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H00C0FFFF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   240
         Index           =   2
         Left            =   120
         TabIndex        =   23
         Top             =   960
         Width           =   1920
      End
      Begin VB.Label lblTax 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "%"
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
         Index           =   1
         Left            =   960
         TabIndex        =   25
         Top             =   1920
         Width           =   180
      End
      Begin VB.Label lblTax 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H00C0FFFF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   240
         Index           =   2
         Left            =   120
         TabIndex        =   26
         Top             =   2280
         Width           =   1875
      End
      Begin VB.Label txtTotal 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H00C0FFFF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   240
         Left            =   120
         TabIndex        =   31
         Top             =   5280
         Width           =   1860
      End
      Begin VB.Label lblCurrencyId 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Mata Uang"
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
         TabIndex        =   27
         Top             =   2760
         Width           =   945
      End
   End
   Begin VB.TextBox txtInput 
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   1320
      TabIndex        =   11
      TabStop         =   0   'False
      Top             =   5040
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.Frame fraSearch 
      Height          =   735
      Left            =   120
      TabIndex        =   33
      Top             =   1200
      Width           =   8895
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
         Left            =   7680
         TabIndex        =   2
         Top             =   240
         Width           =   1095
      End
      Begin VB.ComboBox cmbMonth 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   1320
         TabIndex        =   0
         Top             =   240
         Width           =   615
      End
      Begin VB.TextBox txtYear 
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
         Left            =   5400
         MaxLength       =   4
         TabIndex        =   1
         Top             =   240
         Width           =   615
      End
      Begin VB.Label lblMonth 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Bulan"
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
         TabIndex        =   14
         Top             =   240
         Width           =   495
      End
      Begin VB.Label lblYear 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Tahun"
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
         Left            =   4080
         TabIndex        =   15
         Top             =   240
         Width           =   525
      End
   End
   Begin VB.Frame fraDetail 
      Height          =   975
      Left            =   120
      TabIndex        =   35
      Top             =   3600
      Width           =   8895
      Begin VB.TextBox txtNotes 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   645
         Left            =   1320
         MaxLength       =   150
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   7
         Top             =   240
         Width           =   7455
      End
      Begin VB.Label lblNotes 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Keterangan"
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
         TabIndex        =   20
         Top             =   240
         Width           =   990
      End
   End
   Begin VB.Frame fraHeader 
      Height          =   1695
      Left            =   120
      TabIndex        =   34
      Top             =   1920
      Width           =   8895
      Begin VB.CommandButton cmdPOId 
         Caption         =   "..."
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
         Left            =   4320
         TabIndex        =   12
         TabStop         =   0   'False
         Top             =   1200
         Width           =   375
      End
      Begin VB.ComboBox cmbCustomerId 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   1320
         TabIndex        =   5
         Top             =   720
         Width           =   7455
      End
      Begin VB.ComboBox cmbPOId 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   1320
         TabIndex        =   6
         Top             =   1200
         Width           =   2775
      End
      Begin VB.TextBox txtSOId 
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
         MaxLength       =   20
         TabIndex        =   3
         Top             =   240
         Width           =   2535
      End
      Begin MSComCtl2.DTPicker dtpSODate 
         Height          =   375
         Left            =   5400
         TabIndex        =   4
         Top             =   240
         Width           =   1575
         _ExtentX        =   2778
         _ExtentY        =   661
         _Version        =   393216
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Courier New"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Format          =   80609283
         CurrentDate     =   39330
      End
      Begin VB.Label lblCustomerId 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Customer"
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
         TabIndex        =   18
         Top             =   720
         Width           =   840
      End
      Begin VB.Label lblPOId 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Nomor PO"
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
         TabIndex        =   19
         Top             =   1200
         Width           =   915
      End
      Begin VB.Label lblSODate 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Tanggal"
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
         Left            =   4080
         TabIndex        =   17
         Top             =   240
         Width           =   675
      End
      Begin VB.Label lblSOId 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Nomor SO"
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
         TabIndex        =   16
         Top             =   240
         Width           =   915
      End
   End
   Begin MSFlexGridLib.MSFlexGrid flxDetail 
      Height          =   2175
      Left            =   120
      TabIndex        =   32
      TabStop         =   0   'False
      Top             =   4680
      Width           =   8895
      _ExtentX        =   15690
      _ExtentY        =   3836
      _Version        =   393216
      ForeColorFixed  =   -2147483640
      BackColorBkg    =   -2147483633
      FillStyle       =   1
      SelectionMode   =   1
      Appearance      =   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin MSComctlLib.Toolbar tlbDetail 
      Align           =   2  'Align Bottom
      Height          =   630
      Left            =   0
      TabIndex        =   38
      Top             =   7125
      Width           =   11430
      _ExtentX        =   20161
      _ExtentY        =   1111
      ButtonWidth     =   609
      ButtonHeight    =   953
      Appearance      =   1
      _Version        =   393216
      Begin MSComctlLib.ImageList imlDetail 
         Left            =   10800
         Top             =   0
         _ExtentX        =   1005
         _ExtentY        =   1005
         BackColor       =   -2147483643
         ImageWidth      =   32
         ImageHeight     =   32
         MaskColor       =   12632256
         _Version        =   393216
         BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
            NumListImages   =   3
            BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmTHSOSELL.frx":1F8A
               Key             =   ""
            EndProperty
            BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmTHSOSELL.frx":43DC
               Key             =   ""
            EndProperty
            BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmTHSOSELL.frx":682E
               Key             =   ""
            EndProperty
         EndProperty
      End
   End
   Begin MSComctlLib.Toolbar tlbMain 
      Align           =   1  'Align Top
      Height          =   630
      Left            =   0
      TabIndex        =   37
      Top             =   0
      Width           =   11430
      _ExtentX        =   20161
      _ExtentY        =   1111
      ButtonWidth     =   609
      ButtonHeight    =   953
      Appearance      =   1
      _Version        =   393216
      Begin MSComctlLib.ImageList imlMain 
         Left            =   10800
         Top             =   0
         _ExtentX        =   1005
         _ExtentY        =   1005
         BackColor       =   -2147483643
         ImageWidth      =   48
         ImageHeight     =   48
         MaskColor       =   12632256
         _Version        =   393216
         BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
            NumListImages   =   7
            BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmTHSOSELL.frx":8C80
               Key             =   ""
            EndProperty
            BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmTHSOSELL.frx":B0D2
               Key             =   ""
            EndProperty
            BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmTHSOSELL.frx":D524
               Key             =   ""
            EndProperty
            BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmTHSOSELL.frx":F976
               Key             =   ""
            EndProperty
            BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmTHSOSELL.frx":11DC8
               Key             =   ""
            EndProperty
            BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmTHSOSELL.frx":1236A
               Key             =   ""
            EndProperty
            BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmTHSOSELL.frx":147BC
               Key             =   ""
            EndProperty
         EndProperty
      End
   End
End
Attribute VB_Name = "frmTHSOSELL"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Enum ButtonMode
    [AddButton] = 1
    [UpdateButton]
    [DeleteButton]
    [PrintButton]
    [BrowseButton]
    [SaveButton]
    [CancelButton]
End Enum

Private Enum ButtonDetailMode
    [AddDetailButton] = 1
    [UpdateDetailButton]
    [DeleteDetailButton]
End Enum

Private Enum ColumnConstants
    [BlankColumn]
    [ItemIdColumn]
    [NameColumn]
    [QtyColumn]
    [QtyLastColumn]
    [UnityIdColumn]
    [PriceIdColumn]
End Enum

Private rstMain As ADODB.Recordset

Private PrintTransaction As clsPRTTHSOSELL

Private objMode As FunctionMode

Private strFormCaption As String

Private blnDetailFill As Boolean

Private blnParent As Boolean
Private blnActivate As Boolean

Private Sub Form_Activate()
    If blnParent Then Exit Sub
    If blnActivate Then Exit Sub
    
    If rstMain.RecordCount > 0 Then
        blnParent = True
        
        mdlProcedures.CornerWindows Me
        
        mdlProcedures.ShowForm frmBRWTHSOSELL, False, True
    End If
    
    blnActivate = True
End Sub

Private Sub Form_Load()
    SetInitialization
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
    If blnParent Then
        Cancel = 1
    Else
        If Not PrintTransaction Is Nothing Then
            Set PrintTransaction = Nothing
        End If
        
        If frmTHSJSELL.Parent Then
            frmTHSJSELL.Parent = False
        End If
        
        mdlDatabase.CloseRecordset rstMain
    End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Set frmTHSOSELL = Nothing
End Sub

Private Sub tlbMain_ButtonClick(ByVal Button As MSComctlLib.Button)
    If Me.txtInput.Visible Then Me.txtInput.Visible = False
    
    Select Case Button.Index
        Case AddButton:
            objMode = AddMode

            SetMode
        Case UpdateButton:
            objMode = UpdateMode

            SetMode
        Case DeleteButton:
            DeleteFunction
        Case PrintButton:
            PrintFunction
        Case BrowseButton:
            If blnParent Then Exit Sub
            
            blnParent = True
            
            mdlProcedures.CornerWindows Me
            
            mdlProcedures.ShowForm frmBRWTHSOSELL, False, True
        Case SaveButton:
            SaveFunction
        Case CancelButton:
            objMode = ViewMode

            SetMode

            FillText
    End Select
End Sub

Private Sub tlbDetail_ButtonClick(ByVal Button As MSComctlLib.Button)
    If Me.txtInput.Visible Then Me.txtInput.Visible = False
    
    Select Case Button.Index
        Case AddDetailButton:
            If Not mdlProcedures.IsValidComboData(Me.cmbPOId) Then
                MsgBox "Nomor PO Harap Dipilih Terlebih Dahulu", vbOKOnly + vbExclamation, mdlProcedures.SetCaptionMode(strFormCaption, objMode)
                
                Me.cmbPOId.SetFocus
                
                Exit Sub
            End If
            
            If Not mdlProcedures.IsValidComboData(Me.cmbCurrencyId) Then
                MsgBox "Mata Uang Harap Dipilih Terlebih Dahulu", vbOKOnly + vbExclamation, mdlProcedures.SetCaptionMode(strFormCaption, objMode)
                
                Me.cmbCurrencyId.SetFocus
                
                Exit Sub
            End If
            
            If blnParent Then Exit Sub
            
            blnParent = True

            mdlProcedures.CornerWindows Me

            mdlProcedures.ShowForm frmTDSOSELL, False, True
        Case UpdateDetailButton:
            If mdlProcedures.GetCurrency(Me.flxDetail.TextMatrix(Me.flxDetail.Row, QtyLastColumn)) > 0 Then
                MsgBox "Tidak Dapat Diubah" & vbCrLf & "Terdapat Data Yang Masih Terkait", vbCritical + vbOKOnly, mdlProcedures.SetCaptionMode(strFormCaption, objMode)
                
                Exit Sub
            End If
            
            With Me.txtInput
                Me.flxDetail.Col = QtyColumn

                .Top = Me.flxDetail.Top + Me.flxDetail.CellTop
                .Left = Me.flxDetail.Left + Me.flxDetail.CellLeft
                .Width = Me.flxDetail.CellWidth
                .Height = Me.flxDetail.CellHeight
                .Text = Me.flxDetail.TextMatrix(Me.flxDetail.Row, QtyColumn)

                .Visible = True

                .MaxLength = 10
                .Alignment = AlignmentConstants.vbRightJustify

                .SetFocus
            End With
        Case DeleteDetailButton:
            If mdlProcedures.SetMsgYesNo("Apakah Anda Yakin ?", mdlProcedures.SetCaptionMode(strFormCaption, objMode)) Then
                If mdlProcedures.GetCurrency(Me.flxDetail.TextMatrix(Me.flxDetail.Row, QtyLastColumn)) > 0 Then
                    MsgBox "Tidak Dapat Dihapus" & vbCrLf & "Terdapat Data Yang Masih Terkait", vbCritical + vbOKOnly, mdlProcedures.SetCaptionMode(strFormCaption, objMode)
                    
                    Exit Sub
                End If
            
                If Me.flxDetail.Rows > 2 Then
                    Me.flxDetail.RemoveItem Me.flxDetail.Row
                Else
                    Me.flxDetail.Rows = 1
                End If

                SetModeDetail
            End If
    End Select
End Sub

Private Sub cmbCurrencyId_Validate(Cancel As Boolean)
    CalculateAll
End Sub

Private Sub cmbCustomerId_Validate(Cancel As Boolean)
    Me.FillComboTHPOSELL
End Sub

Private Sub flxDetail_Scroll()
    If Me.txtInput.Visible Then
        Me.txtInput.Visible = False
    End If
End Sub

Private Sub cmdSearch_Click()
    If Not objMode = ViewMode Then Exit Sub
    
    Dim strMonth As String
    Dim strYear As String
    
    strMonth = mdlProcedures.GetComboData(Me.cmbMonth)
    strYear = Trim(Me.txtYear.Text)

    If CInt(mdlProcedures.FormatDate(Me.dtpSODate.MinDate, "M")) >= CInt(strMonth) Then
        If CInt(mdlProcedures.FormatDate(Me.dtpSODate.MinDate, "yyyy")) >= CInt(strYear) Then
            Me.dtpSODate.MinDate = mdlProcedures.SetDate(strMonth, strYear)

            Me.dtpSODate.MaxDate = mdlProcedures.SetDate(strMonth, strYear, , True)
        ElseIf CInt(mdlProcedures.FormatDate(Me.dtpSODate.MinDate, "yyyy")) < CInt(strYear) Then
            Me.dtpSODate.MaxDate = mdlProcedures.SetDate(strMonth, strYear, , True)

            Me.dtpSODate.MinDate = mdlProcedures.SetDate(strMonth, strYear)
        End If
    ElseIf CInt(mdlProcedures.FormatDate(Me.dtpSODate.MinDate, "M")) < CInt(strMonth) Then
        If CInt(mdlProcedures.FormatDate(Me.dtpSODate.MinDate, "yyyy")) > CInt(strYear) Then
            Me.dtpSODate.MinDate = mdlProcedures.SetDate(strMonth, strYear)

            Me.dtpSODate.MaxDate = mdlProcedures.SetDate(strMonth, strYear, , True)
        ElseIf CInt(mdlProcedures.FormatDate(Me.dtpSODate.MinDate, "yyyy")) >= CInt(strYear) Then
            Me.dtpSODate.MaxDate = mdlProcedures.SetDate(strMonth, strYear, , True)
            
            Me.dtpSODate.MinDate = mdlProcedures.SetDate(strMonth, strYear)
        End If
    End If

    SetRecordset
End Sub

Private Sub cmbPOId_Click()
    Me.flxDetail.Rows = 1
    
    SetModeDetail
End Sub

Private Sub txtYear_GotFocus()
    mdlProcedures.GotFocus Me.txtYear
End Sub

Private Sub txtSOId_GotFocus()
    mdlProcedures.GotFocus Me.txtSOId
End Sub

Private Sub txtTax_GotFocus()
    mdlProcedures.GotFocus Me.txtTax
End Sub

Private Sub txtDisc_GotFocus()
    mdlProcedures.GotFocus Me.txtDisc
End Sub

Private Sub txtNotes_GotFocus()
    mdlProcedures.GotFocus Me.txtNotes
End Sub

Private Sub txtInput_GotFocus()
    mdlProcedures.GotFocus Me.txtInput
End Sub

Private Sub cmbMonth_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyReturn Then
        SendKeys "{TAB}"
    End If
End Sub

Private Sub txtYear_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyReturn Then
        SendKeys "{TAB}"
    End If
End Sub

Private Sub txtSOId_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyReturn Then
        SendKeys "{TAB}"
    End If
End Sub

Private Sub dtpSODate_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyReturn Then
        SendKeys "{TAB}"
    End If
End Sub

Private Sub cmbCustomerId_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyReturn Then
        If mdlProcedures.IsValidComboData(Me.cmbCustomerId) Then
            SendKeys "{TAB}"
        Else
            If blnParent Then Exit Sub
            
            blnParent = True
            
            mdlProcedures.CornerWindows Me
            
            mdlProcedures.ShowForm frmBRWTMCUSTOMER, False, True
        End If
    End If
End Sub

Private Sub cmbPOId_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyReturn Then
        If mdlProcedures.IsValidComboData(Me.cmbCustomerId) Then
            If mdlProcedures.IsValidComboData(Me.cmbPOId) Then
                SendKeys "{TAB}"
            Else
                If blnParent Then Exit Sub
                
                blnParent = True
                
                mdlProcedures.CornerWindows Me
                
                mdlProcedures.ShowForm frmBRWTHPOSELL, False, True
            End If
        Else
            SendKeys "{TAB}"
        End If
    End If
End Sub

Private Sub txtDisc_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyReturn Then
        SendKeys "{TAB}"
    End If
End Sub

Private Sub txtTax_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyReturn Then
        SendKeys "{TAB}"
    End If
End Sub

Private Sub cmbCurrencyId_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyReturn Then
        If mdlProcedures.IsValidComboData(Me.cmbCurrencyId) Then
            SendKeys "{TAB}"
        Else
            If blnParent Then Exit Sub
            
            blnParent = True
            
            mdlProcedures.CornerWindows Me
            
            mdlProcedures.ShowForm frmBRWTMCURRENCY, False, True
        End If
    End If
End Sub

Private Sub txtInput_Change()
    Me.txtInput.Text = mdlProcedures.FormatCurrency(Me.txtInput.Text)

    Me.txtInput.SelStart = Len(Me.txtInput.Text)
End Sub

Private Sub txtInput_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyReturn Then
        Dim curQty As Currency
        Dim curMinStock As Currency
        Dim curStockQty As Currency
        
        curQty = mdlProcedures.GetCurrency(Me.txtInput.Text)
        curMinStock = mdlProcedures.GetCurrency(mdlDatabase.GetFieldData(mdlGlobal.conInventory, "MinStock", mdlTable.CreateTMITEM, "ItemId='" & Me.flxDetail.TextMatrix(Me.flxDetail.Row, ItemIdColumn) & "'"))
        curStockQty = mdlTransaction.CheckStock(Me.flxDetail.TextMatrix(Me.flxDetail.Row, ItemIdColumn))
        
        If curQty > 0 Then
            If curQty > curStockQty Then
                Me.txtInput.Visible = False
                
                Exit Sub
            Else
                If curMinStock > 0 Then
                    If (curStockQty - curQty) < curMinStock Then
                        Me.txtInput.Visible = False
                        
                        Exit Sub
                    End If
                End If
                
                If curQty > mdlTHPOSELL.GetTotalQtyPOSELL(Me.POIdCombo, Me.flxDetail.TextMatrix(Me.flxDetail.Row, ItemIdColumn)) Then
                    Me.txtInput.Visible = False
                    
                    Exit Sub
                End If
            End If
        Else
            Me.txtInput.Visible = False
            
            Exit Sub
        End If
        
        Me.flxDetail.TextMatrix(Me.flxDetail.Row, QtyColumn) = mdlProcedures.FormatCurrency(Me.txtInput.Text)
        
        Me.txtInput.Visible = False
        
        CalculateAll
    ElseIf KeyCode = vbKeyEscape Then
        Me.txtInput.Visible = False
    End If
End Sub

Private Sub txtInput_LostFocus()
    Me.txtInput.Visible = False
End Sub

Private Sub cmbMonth_Validate(Cancel As Boolean)
    If Not objMode = ViewMode Then Exit Sub

    If Not mdlProcedures.IsValidComboData(Me.cmbMonth) Then Me.cmbMonth.ListIndex = CInt(mdlProcedures.FormatDate(Now, "M")) - 1
End Sub

Private Sub txtYear_Validate(Cancel As Boolean)
    If Not objMode = ViewMode Then Exit Sub

    If Not IsNumeric(Me.txtYear.Text) Then Me.txtYear.Text = mdlProcedures.FormatDate(Now, "yyyy")

    If CInt(Me.txtYear.Text) < 1601 Then Me.txtYear.Text = mdlProcedures.FormatDate(Now, "yyyy")
End Sub

Private Sub txtDisc_Validate(Cancel As Boolean)
    If Not IsNumeric(Me.txtDisc.Text) Then Me.txtDisc.Text = "0"
    
    CalculateAll False, , False
End Sub

Private Sub txtTax_Validate(Cancel As Boolean)
    If Not IsNumeric(Me.txtTax.Text) Then Me.txtTax.Text = "0"
    
    CalculateAll False, False
End Sub

Private Sub cmdPOId_Click()
    If Not mdlGlobal.UserAuthority.IsMenuAccess(mdiMain.mnuTHPOSELL.Name) Then Exit Sub
    
    If blnParent Then Exit Sub

    blnParent = True

    mdlProcedures.CornerWindows Me

    mdlProcedures.ShowForm frmTHPOSELL, False
End Sub

Private Sub cmdCurrencyId_Click()
    If Not mdlGlobal.UserAuthority.IsMenuAccess(mdiMain.mnuTMCURRENCY.Name) Then Exit Sub
    
    If blnParent Then Exit Sub
    
    blnParent = True
    
    mdlProcedures.CornerWindows Me
    
    mdlProcedures.ShowForm frmTMCURRENCY, False
End Sub

Private Sub SetInitialization()
    mdlProcedures.CenterWindows Me

    With Me.tlbMain
        .AllowCustomize = False

        .ImageList = Me.imlMain

        .Buttons.Add AddButton, , "Tambah", , AddButton
        .Buttons.Add UpdateButton, , "Ubah", , UpdateButton
        .Buttons.Add DeleteButton, , "Hapus", , DeleteButton
        .Buttons.Add PrintButton, , "Cetak", , PrintButton
        .Buttons.Add BrowseButton, , "Daftar", , BrowseButton
        .Buttons.Add SaveButton, , "Simpan", , SaveButton
        .Buttons.Add CancelButton, , "Batal", , CancelButton
    End With
    
    Me.dtpSODate.CustomFormat = mdlGlobal.strFormatDate

    With Me.tlbDetail
        .AllowCustomize = False

        .ImageList = Me.imlDetail

        .Buttons.Add AddDetailButton, , "Tambah", , AddDetailButton
        .Buttons.Add UpdateDetailButton, , "Ubah", , UpdateDetailButton
        .Buttons.Add DeleteDetailButton, , "Hapus", , DeleteDetailButton
    End With

    FillCombo

    strFormCaption = mdlText.strTHSOSELL
    
    Dim strMonth As String
    Dim strYear As String
    
    strMonth = mdlProcedures.GetComboData(Me.cmbMonth)
    strYear = Trim(Me.txtYear.Text)

    Me.dtpSODate.MinDate = mdlProcedures.SetDate(strMonth, strYear)
    Me.dtpSODate.MaxDate = mdlProcedures.SetDate(strMonth, strYear, , True)

    ArrangeGrid

    SetRecordset
    
    blnParent = False
    blnActivate = False
End Sub

Private Sub SetRecordset()
    Set rstMain = mdlDatabase.OpenRecordset(mdlGlobal.conInventory, "*", mdlTable.CreateTHSOSELL, , "MONTH(SODate)=" & Me.MonthTrans & " AND YEAR(SODate)=" & Me.YearTrans, "SOId ASC")

    objMode = ViewMode

    SetMode

    FillText
End Sub

Private Sub SetMode()
    Dim blnFront As Boolean
    Dim blnBack As Boolean

    If objMode = ViewMode Then
        blnFront = True
        blnBack = False
    Else
        blnFront = False
        blnBack = True
    End If

    Me.fraSearch.Enabled = blnFront

    With Me.tlbMain
        .Buttons(AddButton).Visible = blnFront
        .Buttons(UpdateButton).Visible = blnFront
        .Buttons(DeleteButton).Visible = blnFront
        .Buttons(PrintButton).Visible = blnFront
        .Buttons(BrowseButton).Visible = blnFront
        .Buttons(SaveButton).Visible = blnBack
        .Buttons(CancelButton).Visible = blnBack
    End With

    With Me.tlbDetail
        .Buttons(AddDetailButton).Enabled = blnBack
        .Buttons(UpdateDetailButton).Enabled = blnBack
        .Buttons(DeleteDetailButton).Enabled = blnBack
    End With

    Me.fraDetail.Enabled = blnBack
    Me.fraNotes.Enabled = blnBack
    
    If objMode = AddMode Then
        Me.fraHeader.Enabled = True

        mdlProcedures.SetControlMode Me, objMode, , , Me.cmbMonth.Name & " | " & Me.txtYear.Name
        
        SetModeDetail
        
        IncrementId
        
        CalculateAll
        
        Me.cmbPOId.Clear
        
        Me.txtSOId.SetFocus
    ElseIf objMode = UpdateMode Then
        Me.fraHeader.Enabled = False

        mdlProcedures.SetControlMode Me, objMode, False, Me.txtSOId.Name, Me.cmbMonth.Name & " | " & Me.txtYear.Name

        SetModeDetail

        Me.txtNotes.SetFocus
    Else
        Me.fraHeader.Enabled = False
    End If

    If rstMain.RecordCount > 0 Then
        With Me.tlbMain
            .Buttons(UpdateButton).Enabled = True
            .Buttons(DeleteButton).Enabled = True
            .Buttons(PrintButton).Enabled = True
            .Buttons(BrowseButton).Enabled = True
        End With

        If objMode = ViewMode Then
            mdlProcedures.SetControlMode Me, objMode, False, , Me.cmbMonth.Name & " | " & Me.txtYear.Name
        End If
    Else
        With Me.tlbMain
            .Buttons(UpdateButton).Enabled = False
            .Buttons(DeleteButton).Enabled = False
            .Buttons(PrintButton).Enabled = False
            .Buttons(BrowseButton).Enabled = False
        End With

        If objMode = ViewMode Then
            CalculateAll
            
            mdlProcedures.SetControlMode Me, objMode, , , Me.cmbMonth.Name & " | " & Me.txtYear.Name
        End If
    End If

    Me.Caption = mdlProcedures.SetCaptionMode(strFormCaption, objMode)
End Sub

Private Sub PrintFunction()
    If Not PrintTransaction Is Nothing Then
        Set PrintTransaction = Nothing
    End If

    Set PrintTransaction = New clsPRTTHSOSELL
    
    PrintTransaction.ImportToExcel rstMain!SOId
End Sub

Private Sub DeleteFunction()
    objMode = DeleteMode

    If mdlProcedures.SetMsgYesNo("Apakah Anda Yakin ?", mdlProcedures.SetCaptionMode(strFormCaption, objMode)) Then
        Dim strMessage As String
        
        strMessage = "Tidak Dapat Dihapus" & vbCrLf & "Terdapat Data Yang Masih Terkait ("
        
        If mdlDatabase.IsDataExists(mdlGlobal.conInventory, mdlTable.CreateTHSJSELL, "SOId='" & rstMain!SOId & "'") Then
            MsgBox strMessage & mdlText.strTHSJSELL & ")", vbCritical + vbOKOnly, mdlProcedures.SetCaptionMode(strFormCaption, objMode)
        Else
            mdlTHSOSELL.DeleteTHSOSELL rstMain
            
            mdlDatabase.DeleteRecordQuery mdlGlobal.conInventory, mdlTable.CreateTDSOSELL, "SOId='" & rstMain!SOId & "'"
            mdlDatabase.DeleteSingleRecord rstMain
            
            If frmTHSJSELL.Parent Then
                frmTHSJSELL.FillComboTHSOSELL
            End If
            
            frmMenu.SetRecycle
        End If
    End If

    objMode = ViewMode

    SetMode

    FillText
End Sub

Private Sub SaveFunction()
    If Not CheckValidation Then Exit Sub

    With rstMain
        mdlDatabase.SearchRecordset rstMain, "SoId", mdlProcedures.RepDupText(Trim(Me.txtSOId.Text))

        If .EOF Then
            .AddNew

            !SOId = mdlProcedures.RepDupText(Trim(Me.txtSOId.Text))
            !SODate = mdlProcedures.FormatDate(Me.dtpSODate.Value)
            !POId = Me.POIdCombo

            !CreateId = Trim(mdlGlobal.UserAuthority.UserId)
            !CreateDate = mdlProcedures.FormatDate(Now)
        End If

        !Tax = mdlProcedures.GetCurrency(Me.txtTax.Text)
        !Disc = mdlProcedures.GetCurrency(Me.txtDisc.Text)
        !CurrencyId = Me.CurrencyIdCombo
        !Notes = mdlProcedures.RepDupText(Trim(Me.txtNotes.Text))

        !UpdateId = Trim(mdlGlobal.UserAuthority.UserId)
        !UpdateDate = mdlProcedures.FormatDate(Now)

        .Update
    End With

    SaveDetailFunction

    If objMode = AddMode Then
        mdlProcedures.SetControlMode Me, objMode, , , Me.cmbMonth.Name & " | " & Me.txtYear.Name
        
        Me.flxDetail.Rows = 1
        
        SetModeDetail
        
        IncrementId
        
        CalculateAll
        
        Me.cmbPOId.Clear
        
        Me.txtSOId.SetFocus
    ElseIf objMode = UpdateMode Then
        objMode = ViewMode

        SetMode
    End If
End Sub

Private Sub SaveDetailFunction()
    Dim strSOId As String

    strSOId = mdlProcedures.RepDupText(Trim(Me.txtSOId.Text))

    mdlDatabase.DeleteRecordQuery mdlGlobal.conInventory, mdlTable.CreateTDSOSELL, "SOId='" & strSOId & "'"

    If Not Me.flxDetail.Rows > 1 Then Exit Sub

    Dim rstTemp As ADODB.Recordset

    Set rstTemp = mdlDatabase.OpenRecordset(mdlGlobal.conInventory, "*", mdlTable.CreateTDSOSELL, , "SOId='" & strSOId & "'")

    With rstTemp
        If Not .RecordCount > 0 Then
            Dim lngRow As Long

            For lngRow = 1 To Me.flxDetail.Rows - 1
                .AddNew

                !SOId = strSOId
                !SODtlId = !SOId & Trim(Me.flxDetail.TextMatrix(lngRow, ItemIdColumn))
                !ItemId = Trim(Me.flxDetail.TextMatrix(lngRow, ItemIdColumn))
                !Qty = mdlProcedures.GetCurrency(Me.flxDetail.TextMatrix(lngRow, QtyColumn))
                !PriceId = Trim(Me.flxDetail.TextMatrix(lngRow, PriceIdColumn))

                !CreateId = Trim(mdlGlobal.UserAuthority.UserId)
                !CreateDate = mdlProcedures.FormatDate(Now)

                !UpdateId = Trim(mdlGlobal.UserAuthority.UserId)
                !UpdateDate = mdlProcedures.FormatDate(Now)

                .Update
            Next lngRow
        End If
    End With

    mdlDatabase.CloseRecordset rstTemp
End Sub

Private Function CheckValidation() As Boolean
    If mdlProcedures.RepDupText(Trim(Me.txtSOId.Text)) = "" Then
        MsgBox "Nomor SO Harap Diisi", vbOKOnly + vbExclamation, mdlProcedures.SetCaptionMode(strFormCaption, objMode)
        
        Me.txtSOId.SetFocus

        CheckValidation = False

        Exit Function
    ElseIf Not mdlProcedures.IsValidComboData(Me.cmbPOId) Then
        MsgBox "Nomor PO Harap Dipilih", vbOKOnly + vbExclamation, mdlProcedures.SetCaptionMode(strFormCaption, objMode)
        
        Me.cmbPOId.SetFocus

        CheckValidation = False

        Exit Function
    ElseIf Not mdlProcedures.IsValidComboData(Me.cmbCurrencyId) Then
        MsgBox "Mata Uang Harap Dipilih", vbOKOnly + vbExclamation, mdlProcedures.SetCaptionMode(strFormCaption, objMode)
        
        Me.cmbCurrencyId.SetFocus
        
        CheckValidation = False
        
        Exit Function
    ElseIf Not Me.flxDetail.Rows > 1 Then
        MsgBox "Data Barang Harap Diisi", vbOKOnly + vbExclamation, mdlProcedures.SetCaptionMode(strFormCaption, objMode)
        
        Me.txtNotes.SetFocus
        
        CheckValidation = False
        
        Exit Function
    End If

    If objMode = AddMode Then
        With rstMain
            mdlDatabase.SearchRecordset rstMain, "SoId", mdlProcedures.RepDupText(Trim(Me.txtSOId.Text))

            If Not .EOF Then
                MsgBox "Nomor SO Sudah Ada", vbOKOnly + vbExclamation, mdlProcedures.SetCaptionMode(strFormCaption, objMode)
                
                CheckValidation = False

                Exit Function
            End If
        End With
    End If
    
    CheckValidation = True
End Function

Private Sub FillText()
    With rstMain
        If .RecordCount > 0 Then
            Me.txtSOId.Text = Trim(!SOId)
            Me.dtpSODate.Value = mdlProcedures.FormatDate(!SODate, mdlGlobal.strFormatDate)
            
            Me.CustomerIdCombo = mdlDatabase.GetFieldData(mdlGlobal.conInventory, "CustomerId", mdlTable.CreateTHPOSELL, "POId='" & !POId & "'")

            Me.FillComboTHPOSELL
            
            Me.POIdCombo = !POId
            
            Me.txtTax.Text = mdlProcedures.GetCurrency(!Tax)
            Me.txtDisc.Text = mdlProcedures.GetCurrency(!Disc)
            
            Me.CurrencyIdCombo = !CurrencyId

            Me.txtNotes.Text = Trim(!Notes)

            FillGrid !SOId
        Else
            FillGrid
        End If
    End With
    
    CalculateAll
End Sub

Private Sub FillGrid(Optional ByVal strSOId As String = "")
    With Me.flxDetail
        .Rows = 1

        Dim rstTemp As ADODB.Recordset

        Set rstTemp = mdlDatabase.OpenRecordset(mdlGlobal.conInventory, "*", mdlTable.CreateTDSOSELL, False, "SOId='" & strSOId & "'")

        While Not rstTemp.EOF
            .Rows = .Rows + 1

            .TextMatrix(.Rows - 1, ItemIdColumn) = rstTemp!ItemId
            .TextMatrix(.Rows - 1, NameColumn) = mdlDatabase.GetFieldData(mdlGlobal.conInventory, "Name", mdlTable.CreateTMITEM, "ItemId='" & rstTemp!ItemId & "'")
            .TextMatrix(.Rows - 1, QtyColumn) = mdlProcedures.FormatCurrency(rstTemp!Qty)
            .TextMatrix(.Rows - 1, QtyLastColumn) = mdlProcedures.FormatCurrency(CStr(mdlTHSJSELL.GetQtySOFromSJSELL(strSOId, rstTemp!ItemId)))
            .TextMatrix(.Rows - 1, UnityIdColumn) = mdlDatabase.GetFieldData(mdlGlobal.conInventory, "UnityId", mdlTable.CreateTMITEM, "ItemId='" & rstTemp!ItemId & "'")
            .TextMatrix(.Rows - 1, PriceIdColumn) = rstTemp!PriceId

            .Row = .Rows - 1
            .Col = ItemIdColumn
            .ColSel = PriceIdColumn
            
            DoEvents

            rstTemp.MoveNext
        Wend

        If rstTemp.RecordCount > 0 Then .Row = 1
    End With
End Sub

Private Sub FillCombo()
    FillComboSearch

    Me.FillComboTMCUSTOMER
    Me.FillComboTMCURRENCY
End Sub

Private Sub FillComboSearch()
    mdlProcedures.FillComboMonth Me.cmbMonth, , , mdlProcedures.FormatDate(Now, "M")

    Me.txtYear.Text = mdlProcedures.FormatDate(Now, "yyyy")
End Sub

Public Sub FillComboTMCUSTOMER()
    Dim rstTemp As ADODB.Recordset
    
    Set rstTemp = mdlDatabase.OpenRecordset(mdlGlobal.conInventory, "CustomerId, Name", mdlTable.CreateTMCUSTOMER, False, "StatusYN='" & mdlGlobal.strYes & "'")
    
    mdlProcedures.FillComboData Me.cmbCustomerId, rstTemp
    
    mdlDatabase.CloseRecordset rstTemp
End Sub

Public Sub FillComboTMCURRENCY()
    Dim rstTemp As ADODB.Recordset
    
    Set rstTemp = mdlDatabase.OpenRecordset(mdlGlobal.conInventory, "CurrencyId", mdlTable.CreateTMCURRENCY)
    
    mdlProcedures.FillComboData Me.cmbCurrencyId, rstTemp
    
    mdlDatabase.CloseRecordset rstTemp
End Sub

Public Sub FillComboTHPOSELL()
    Dim strTableFirst As String
    Dim strTableSecond As String
    Dim strTable As String

    strTableFirst = mdlTable.CreateTHPOSELL
    strTableSecond = mdlTable.CreateTMCUSTOMER

    strTable = strTableFirst & " LEFT JOIN " & strTableSecond & _
        " ON " & strTableFirst & ".CustomerId=" & strTableSecond & ".CustomerId"

    Dim strCriteria As String
    
    strCriteria = strTableFirst & ".CustomerId='" & Me.CustomerIdCombo & "'"
    
    Dim rstTemp As ADODB.Recordset
    
    Set rstTemp = mdlDatabase.OpenRecordset(mdlGlobal.conInventory, "POId", strTable, False, strCriteria)

    mdlProcedures.FillComboData Me.cmbPOId, rstTemp

    mdlDatabase.CloseRecordset rstTemp
End Sub

Private Sub ArrangeGrid()
    With Me.flxDetail
        .AllowUserResizing = flexResizeColumns
        
        .Rows = 1
        .Cols = PriceIdColumn + 1

        .ColWidth(BlankColumn) = 300
        .ColWidth(ItemIdColumn) = 1200
        .ColWidth(NameColumn) = 2850
        .ColWidth(QtyColumn) = 1500
        .ColWidth(QtyLastColumn) = 1500
        .ColWidth(UnityIdColumn) = 1200
        .ColWidth(PriceIdColumn) = 0

        .ColAlignment(ItemIdColumn) = flexAlignLeftCenter
        .ColAlignment(NameColumn) = flexAlignLeftCenter
        .ColAlignment(QtyColumn) = flexAlignRightCenter
        .ColAlignment(QtyLastColumn) = flexAlignRightCenter
        .ColAlignment(UnityIdColumn) = flexAlignLeftCenter

        .TextMatrix(0, ItemIdColumn) = "Kode"
        .TextMatrix(0, NameColumn) = "Nama"
        .TextMatrix(0, QtyColumn) = "Qty"
        .TextMatrix(0, QtyLastColumn) = "Qty (Kirim)"
        .TextMatrix(0, UnityIdColumn) = "Satuan"
    End With
End Sub

Public Function SaveDetail( _
    ByVal strItemId As String, _
    ByVal curQty As Currency, _
    ByVal strPriceId As String) As Boolean
    With Me.flxDetail
        Dim blnExist As Boolean

        blnExist = False

        If .Rows > 1 Then
            If mdlProcedures.IsDataExistsInFlex(Me.flxDetail, strItemId, , , , , True) Then blnExist = True
        End If

        If Not blnExist Then
            .Rows = .Rows + 1

            .TextMatrix(.Rows - 1, ItemIdColumn) = strItemId
            .TextMatrix(.Rows - 1, NameColumn) = mdlDatabase.GetFieldData(mdlGlobal.conInventory, "Name", mdlTable.CreateTMITEM, "ItemId='" & strItemId & "'")
            .TextMatrix(.Rows - 1, QtyColumn) = mdlProcedures.FormatCurrency(CStr(curQty))
            .TextMatrix(.Rows - 1, QtyLastColumn) = mdlProcedures.FormatCurrency("0")
            .TextMatrix(.Rows - 1, UnityIdColumn) = mdlDatabase.GetFieldData(mdlGlobal.conInventory, "UnityId", mdlTable.CreateTMITEM, "ItemId='" & strItemId & "'")
            .TextMatrix(.Rows - 1, PriceIdColumn) = strPriceId
            
            .Row = .Rows - 1
            .Col = ItemIdColumn
            .ColSel = PriceIdColumn
            
            CalculateAll

            SetModeDetail
        End If
    End With
End Function

Private Sub SetModeDetail()
    If Me.flxDetail.Rows > 1 Then
        blnDetailFill = True
    Else
        blnDetailFill = False
    End If

    With Me.tlbDetail
        If blnDetailFill Then
            .Buttons(UpdateDetailButton).Enabled = True
            .Buttons(DeleteDetailButton).Enabled = True
        Else
            .Buttons(UpdateDetailButton).Enabled = False
            .Buttons(DeleteDetailButton).Enabled = False
        End If
    End With
End Sub

Private Sub IncrementId()
    Dim intCounter As Integer
    
    intCounter = 0
    
    Dim rstTemp As ADODB.Recordset
    
    Set rstTemp = mdlDatabase.OpenRecordset(mdlGlobal.conInventory, "SOId", mdlTable.CreateTHSOSELL, , "MONTH(SODate)=" & Me.MonthTrans & " AND YEAR(SODate)=" & Me.YearTrans)
    
    With rstTemp
        If .RecordCount > 0 Then
            Dim intNoSeq As Integer
            
            While Not .EOF
                intNoSeq = ExtractSequential(Trim(!SOId))
                
                If Not intNoSeq < 0 Then
                    If intCounter < intNoSeq Then
                        intCounter = intNoSeq
                    End If
                End If
                
                .MoveNext
            Wend
        End If
    End With
    
    Dim strReferencesNumber As String
    
    strReferencesNumber = mdlText.strSOIDINIT & "/" & mdlText.strSELLINIT
    
    Set rstTemp = _
        mdlDatabase.OpenRecordset( _
            mdlGlobal.conInventory, _
            "ReferencesNumber", _
            mdlTable.CreateTHRECYCLE, _
            False, _
            "LEFT(ReferencesNumber, " & Len(strReferencesNumber) & ")='" & strReferencesNumber & "'")
            
    While Not rstTemp.EOF
        intNoSeq = ExtractSequential(Trim(rstTemp!ReferencesNumber))
        
        If Not intNoSeq < 0 Then
            If intCounter < intNoSeq Then
                intCounter = intNoSeq
            End If
        End If
        
        rstTemp.MoveNext
    Wend
    
    intCounter = intCounter + 1
    
    Me.txtSOId.Text = ZipId(intCounter)
    
    mdlDatabase.CloseRecordset rstTemp
End Sub

Private Function ExtractSequential(ByVal strSOId As String) As Integer
    Dim strExtract() As String
    
    strExtract = Split(strSOId, "/")
    
    If Not UBound(strExtract) = 4 Then
        ExtractSequential = 0
        
        Exit Function
    End If
    
    If Not IsNumeric(strExtract(4)) Then
        ExtractSequential = 0
        
        Exit Function
    End If
    
    ExtractSequential = CInt(strExtract(4))
End Function

Private Function ZipId(ByVal intNoSeq As Integer) As String
    ZipId = _
        mdlText.strSOIDINIT & _
        "/" & _
        mdlText.strSELLINIT & _
        "/" & _
        mdlProcedures.FormatDate(Me.dtpSODate.Value, "yyyy") & _
        "/" & _
        mdlProcedures.FormatDate(Me.dtpSODate.Value, "MM") & _
        "/" & _
        mdlProcedures.FormatNumber(intNoSeq, "0000")
End Function

Private Sub CalculateAll( _
    Optional ByVal blnSubTotal As Boolean = True, _
    Optional ByVal blnDisc As Boolean = True, _
    Optional ByVal blnTax As Boolean = True, _
    Optional ByVal blnTotal As Boolean = True)
    If blnSubTotal Then CalculateSubTotal
    If blnDisc Then CalculateDisc
    If blnTax Then CalculateTax
    If blnTotal Then CalculateTotal
End Sub

Private Sub CalculateSubTotal()
    Dim curQty As Currency
    Dim curTotal As Currency
    Dim curItemPrice As Currency
    
    Dim strPriceId As String
    
    curTotal = 0
    
    Dim lngRow As Long
    
    With Me.flxDetail
        For lngRow = 1 To .Rows - 1
            strPriceId = .TextMatrix(lngRow, PriceIdColumn)
            
            curItemPrice = _
                mdlTransaction.ConvertCurrency( _
                    mdlDatabase.GetFieldData(mdlGlobal.conInventory, "CurrencyId", mdlTable.CreateTMITEMPRICE, "PriceId='" & strPriceId & "'"), _
                    Me.CurrencyIdCombo, _
                    mdlDatabase.GetFieldData(mdlGlobal.conInventory, "ItemPrice", mdlTable.CreateTMITEMPRICE, "PriceId='" & strPriceId & "'"))
                    
            curQty = mdlProcedures.GetCurrency(.TextMatrix(lngRow, QtyColumn))
                    
            curTotal = curTotal + (curItemPrice * curQty)
        Next lngRow
    End With
    
    Me.txtSubTotal.Caption = mdlProcedures.FormatCurrency(CStr(curTotal))
End Sub

Private Sub CalculateTotal()
    Dim curDisc As Currency
    Dim curTax As Currency
    Dim curSubTotal As Currency
    Dim curTotal As Currency
    
    curDisc = mdlProcedures.GetCurrency(Me.lblDisc(2).Caption)
    curTax = mdlProcedures.GetCurrency(Me.lblTax(2).Caption)
    curSubTotal = mdlProcedures.GetCurrency(Me.txtSubTotal.Caption)
    curTotal = (curSubTotal - curDisc) + curTax
    
    Me.txtTotal.Caption = mdlProcedures.FormatCurrency(CStr(curTotal))
End Sub

Private Sub CalculateTax()
    Dim curTax As Currency
    Dim curSubTotal As Currency
    Dim curTotal As Currency
    
    curTax = mdlProcedures.GetCurrency(Me.txtTax.Text)
    curSubTotal = mdlProcedures.GetCurrency(Me.txtSubTotal.Caption) - mdlProcedures.GetCurrency(Me.lblDisc(2).Caption)
    
    curTotal = (curTax * curSubTotal) / 100
    
    Me.lblTax(2).Caption = mdlProcedures.FormatCurrency(CStr(curTotal))
End Sub

Private Sub CalculateDisc()
    Dim curDisc As Currency
    Dim curSubTotal As Currency
    Dim curTotal As Currency
    
    curDisc = mdlProcedures.GetCurrency(Me.txtDisc.Text)
    curSubTotal = mdlProcedures.GetCurrency(Me.txtSubTotal.Caption)
    
    curTotal = (curDisc * curSubTotal) / 100
    
    Me.lblDisc(2).Caption = mdlProcedures.FormatCurrency(CStr(curTotal))
End Sub

Public Property Get Parent() As Boolean
    Parent = blnParent
End Property

Public Property Get MonthTrans() As String
    MonthTrans = mdlProcedures.GetComboData(Me.cmbMonth)
End Property

Public Property Get YearTrans() As String
    YearTrans = Trim(Me.txtYear.Text)
End Property

Public Property Get SOId() As String
    If rstMain Is Nothing Then Exit Property

    If rstMain.RecordCount > 0 Then
        SOId = rstMain!SOId
    End If
End Property

Public Property Get POId() As String
    If rstMain Is Nothing Then Exit Property

    If rstMain.RecordCount > 0 Then
        POId = rstMain!POId
    End If
End Property

Public Property Get CustomerIdCombo() As String
    CustomerIdCombo = mdlProcedures.GetComboData(Me.cmbCustomerId)
End Property

Public Property Get POIdCombo() As String
    POIdCombo = mdlProcedures.GetComboData(Me.cmbPOId)
End Property

Public Property Get CurrencyIdCombo() As String
    CurrencyIdCombo = mdlProcedures.GetComboData(Me.cmbCurrencyId)
End Property

Public Property Let Parent(ByVal blnEnable As Boolean)
    blnParent = blnEnable

    If blnParent = False Then mdlProcedures.CenterWindows Me
End Property

Public Property Let SOId(ByVal strSOId As String)
    If rstMain Is Nothing Then Exit Property

    mdlDatabase.SearchRecordset rstMain, "SoId", strSOId

    If Not rstMain.EOF Then FillText
End Property

Public Property Let CustomerIdCombo(ByVal strCustomerId As String)
    mdlProcedures.SetComboData Me.cmbCustomerId, strCustomerId
End Property

Public Property Let POIdCombo(ByVal strPOId As String)
    mdlProcedures.SetComboData Me.cmbPOId, strPOId
End Property

Public Property Let CurrencyIdCombo(ByVal strCurrencyId As String)
    mdlProcedures.SetComboData Me.cmbCurrencyId, strCurrencyId
End Property
