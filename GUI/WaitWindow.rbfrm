#tag Window
Begin Window WaitWindow
   BackColor       =   &hFFFFFF
   Backdrop        =   ""
   CloseButton     =   False
   Composite       =   False
   Frame           =   4
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   6.4e+1
   ImplicitInstance=   False
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   ""
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   False
   MinWidth        =   64
   Placement       =   1
   Resizeable      =   False
   Title           =   "Deep Thoughts"
   Visible         =   True
   Width           =   1.6e+2
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   64
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   0
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Multiline       =   ""
      Scope           =   0
      Selectable      =   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Thinking..."
      TextAlign       =   1
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   24
      TextUnit        =   0
      Top             =   0
      Transparent     =   False
      Underline       =   ""
      Visible         =   True
      Width           =   160
      Begin ProgressWheel ProgressWheel1
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   16
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Label1"
         Left            =   9
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   28
         Visible         =   True
         Width           =   16
      End
      Begin ProgressBar ProgressBar1
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   8
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Label1"
         Left            =   0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         Maximum         =   0
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   56
         Value           =   0
         Visible         =   True
         Width           =   160
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  mTaskBar = New TaskBar(Self)
		  mTaskBar.SetProgressState(TaskBar.TaskBarStates.Indeterminate)
		  mTaskBar.SetProgressValue(50, 100)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub SetProgress(Value As Integer, Max As Integer)
		  If Self.Visible Then
		    ProgressBar1.Maximum = 100
		    ProgressBar1.Value = Value * 100 / Max
		    mTaskBar.SetProgressState(TaskBar.TaskBarStates.Normal)
		    mTaskBar.SetProgressValue(Value, Max)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowWithin(parentWindow As Window, facing As Integer = - 1)
		  Super.ShowWithin(parentWindow, facing)
		  Dim w, h As Integer
		  w = parentWindow.Left + (0.25 * Me.Width) + (0.25 * parentWindow.Width)
		  h = parentWindow.Top + (0.25 * Me.Height) + (0.25 * parentWindow.Height)
		  Me.Left = w
		  Me.Top = h
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mTaskBar As TaskBar
	#tag EndProperty


#tag EndWindowCode

