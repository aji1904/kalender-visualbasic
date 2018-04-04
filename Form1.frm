VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5820
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   12285
   LinkTopic       =   "Form1"
   ScaleHeight     =   5820
   ScaleWidth      =   12285
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdKeluar 
      Caption         =   "Keluar"
      Height          =   615
      Left            =   1920
      TabIndex        =   5
      Top             =   4200
      Width           =   1575
   End
   Begin VB.Timer timTampilan 
      Interval        =   1000
      Left            =   240
      Top             =   4440
   End
   Begin VB.Label lblTahun 
      BackColor       =   &H80000005&
      Caption         =   "tahun"
      Height          =   495
      Left            =   5880
      TabIndex        =   4
      Top             =   3960
      Width           =   3375
   End
   Begin VB.Label lblAngka 
      BackColor       =   &H80000005&
      Caption         =   "angka"
      Height          =   2055
      Left            =   5880
      TabIndex        =   3
      Top             =   1320
      Width           =   3375
   End
   Begin VB.Label lblBulan 
      BackColor       =   &H80000005&
      Caption         =   "bulan"
      Height          =   615
      Left            =   6000
      TabIndex        =   2
      Top             =   240
      Width           =   3255
   End
   Begin VB.Label lblJam 
      BackColor       =   &H80000005&
      Caption         =   "jam"
      Height          =   2295
      Left            =   600
      TabIndex        =   1
      Top             =   1320
      Width           =   3255
   End
   Begin VB.Label lblHari 
      BackColor       =   &H80000005&
      Caption         =   "hari"
      Height          =   615
      Left            =   600
      TabIndex        =   0
      Top             =   240
      Width           =   3255
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdKeluar_Click()
    Unload Me
End Sub

Private Sub timTampilan_Timer()
    Dim Hari_ini As Variant
    Hari_ini = Now 'Mengambil tanggal dan jam sistem'
    lblHari.Caption = Format(Hari_ini, "dddd")
    lblBulan.Caption = Format(Hari_ini, "mmmm")
    lblTahun.Caption = Format(Hari_ini, "yyyy")
    lblAngka.Caption = Format(Hari_ini, "d")
End Sub
