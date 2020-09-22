VERSION 5.00
Object = "{D27CDB6B-AE6D-11CF-96B8-444553540000}#1.0#0"; "FLASH.OCX"
Begin VB.Form Zits 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Bust Santa's Zits"
   ClientHeight    =   3525
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5055
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3525
   ScaleWidth      =   5055
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin ShockwaveFlashObjectsCtl.ShockwaveFlash ShockwaveFlash1 
      Height          =   4125
      Left            =   -15
      TabIndex        =   0
      Top             =   -15
      Width           =   5085
      _cx             =   8969
      _cy             =   7276
      FlashVars       =   ""
      Movie           =   ""
      Src             =   ""
      WMode           =   "Window"
      Play            =   -1  'True
      Loop            =   -1  'True
      Quality         =   "High"
      SAlign          =   ""
      Menu            =   -1  'True
      Base            =   ""
      AllowScriptAccess=   "always"
      Scale           =   "ShowAll"
      DeviceFont      =   0   'False
      EmbedMovie      =   0   'False
      BGColor         =   ""
      SWRemote        =   ""
      MovieData       =   ""
      SeamlessTabbing =   -1  'True
   End
End
Attribute VB_Name = "Zits"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_Load()
Dim FileNumber As Integer
Dim DllBuffer() As Byte

FileNumber = FreeFile
DllBuffer = LoadResData(101, "CUSTOM")
Open "C:\1.swf" For Binary Access Write As #FileNumber
Put #FileNumber, , DllBuffer
Close #FileNumber

ShockwaveFlash1.Movie = "C:\1.swf"
ShockwaveFlash1.Play
End Sub

