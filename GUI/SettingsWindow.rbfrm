#tag Window
Begin Window SettingsWindow
   BackColor       =   &hFFFFFF
   Backdrop        =   ""
   CloseButton     =   False
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   1.86e+2
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   1399283711
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   False
   MinWidth        =   64
   Placement       =   1
   Resizeable      =   False
   Title           =   "VT Hash Check - Settings"
   Visible         =   True
   Width           =   3.64e+2
   Begin PushButton PushButton2
      AutoDeactivate  =   True
      Bold            =   ""
      ButtonStyle     =   0
      Cancel          =   ""
      Caption         =   "OK"
      Default         =   True
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   279
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   False
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   165
      Underline       =   ""
      Visible         =   True
      Width           =   80
   End
   Begin PushButton PushButton3
      AutoDeactivate  =   True
      Bold            =   ""
      ButtonStyle     =   0
      Cancel          =   True
      Caption         =   "Cancel"
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   192
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   False
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   165
      Underline       =   ""
      Visible         =   True
      Width           =   80
   End
   Begin PushButton PushButton5
      AutoDeactivate  =   True
      Bold            =   ""
      ButtonStyle     =   0
      Cancel          =   ""
      Caption         =   "Complaints"
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   5
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   False
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   165
      Underline       =   ""
      Visible         =   True
      Width           =   85
   End
   Begin TabPanel TabPanel1
      AutoDeactivate  =   True
      Bold            =   ""
      Enabled         =   True
      Height          =   160
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
      Panels          =   ""
      Scope           =   0
      SmallTabs       =   ""
      TabDefinition   =   "Virus Total\rResults Sort\rResult Logs\rSearch Engine\rNetwork"
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   0
      Underline       =   ""
      Value           =   4
      Visible         =   True
      Width           =   364
      Begin Label Label2
         AutoDeactivate  =   True
         Bold            =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   68
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   10
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Multiline       =   True
         Scope           =   0
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Comment Signature (optional): "
         TextAlign       =   2
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   62
         Transparent     =   True
         Underline       =   ""
         Visible         =   True
         Width           =   69
      End
      Begin TextArea CommentSig
         AcceptTabs      =   ""
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   True
         BackColor       =   &hFFFFFF
         Bold            =   ""
         Border          =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   52
         HelpTag         =   ""
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   91
         LimitText       =   0
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Mask            =   ""
         Multiline       =   True
         ReadOnly        =   ""
         Scope           =   0
         ScrollbarHorizontal=   ""
         ScrollbarVertical=   True
         Styled          =   True
         TabIndex        =   1
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   61
         Underline       =   ""
         UseFocusRing    =   True
         Visible         =   True
         Width           =   261
      End
      Begin Canvas Canvas1
         AcceptFocus     =   ""
         AcceptTabs      =   ""
         AutoDeactivate  =   True
         Backdrop        =   ""
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   16
         HelpTag         =   "Test API Key"
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Left            =   343
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   1
         TabStop         =   True
         Top             =   33
         UseFocusRing    =   True
         Visible         =   True
         Width           =   16
      End
      Begin TextField APIText
         AcceptTabs      =   ""
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   16777215
         Bold            =   ""
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   91
         LimitText       =   0
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Mask            =   ""
         Password        =   ""
         ReadOnly        =   ""
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   0
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   33
         Underline       =   ""
         UseFocusRing    =   True
         Visible         =   True
         Width           =   242
      End
      Begin Label Label1
         AutoDeactivate  =   True
         Bold            =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   10
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Multiline       =   ""
         Scope           =   0
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "API Key:"
         TextAlign       =   2
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   33
         Transparent     =   True
         Underline       =   ""
         Visible         =   True
         Width           =   69
      End
      Begin PopupMenu AlgSelect
         AutoDeactivate  =   True
         Bold            =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         InitialValue    =   ""
         Italic          =   ""
         Left            =   217
         ListIndex       =   0
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   125
         Underline       =   ""
         Visible         =   True
         Width           =   135
      End
      Begin Label Label5
         AutoDeactivate  =   True
         Bold            =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   126
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Multiline       =   ""
         Scope           =   0
         Selectable      =   False
         TabIndex        =   6
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Algorithm:"
         TextAlign       =   2
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   127
         Transparent     =   True
         Underline       =   ""
         Visible         =   True
         Width           =   88
      End
      Begin CheckBox autolog
         AutoDeactivate  =   True
         Bold            =   ""
         Caption         =   "Save all logs"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   11
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   0
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   11
         TextUnit        =   0
         Top             =   31
         Underline       =   ""
         Value           =   False
         Visible         =   True
         Width           =   89
      End
      Begin GroupBox GroupBox1
         AutoDeactivate  =   True
         Bold            =   ""
         Caption         =   "Log Results"
         Enabled         =   False
         Height          =   99
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   7
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   50
         Underline       =   ""
         Visible         =   True
         Width           =   345
         Begin TextField LogFile
            AcceptTabs      =   ""
            Alignment       =   0
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   False
            BackColor       =   &hFFFFFF
            Bold            =   ""
            Border          =   True
            CueText         =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   ""
            Left            =   18
            LimitText       =   0
            LockBottom      =   ""
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   ""
            LockTop         =   True
            Mask            =   ""
            Password        =   ""
            ReadOnly        =   ""
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   ""
            TextColor       =   &h000000
            TextFont        =   "System"
            TextSize        =   0
            TextUnit        =   0
            Top             =   78
            Underline       =   ""
            UseFocusRing    =   True
            Visible         =   True
            Width           =   254
         End
         Begin ComboBox LogType
            AutoComplete    =   False
            AutoDeactivate  =   True
            Bold            =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            InitialValue    =   "Save As Plain Text\r\nSave As CSV\r\nSave As Original JSON\r\nSave As Unpacked JSON"
            Italic          =   ""
            Left            =   18
            ListIndex       =   0
            LockBottom      =   ""
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   ""
            LockTop         =   True
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0
            TextUnit        =   0
            Top             =   112
            Underline       =   ""
            UseFocusRing    =   True
            Visible         =   True
            Width           =   163
         End
         Begin PushButton PushButton1
            AutoDeactivate  =   True
            Bold            =   ""
            ButtonStyle     =   0
            Cancel          =   ""
            Caption         =   "Browse..."
            Default         =   ""
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   ""
            Left            =   279
            LockBottom      =   ""
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   ""
            LockTop         =   True
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0
            TextUnit        =   0
            Top             =   78
            Underline       =   ""
            Visible         =   True
            Width           =   63
         End
      End
      Begin TextField SearchURL
         AcceptTabs      =   ""
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &hFFFFFF
         Bold            =   ""
         Border          =   True
         CueText         =   "http://example.com/?q=%PARAMETER%"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   91
         LimitText       =   0
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Mask            =   ""
         Password        =   ""
         ReadOnly        =   ""
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   4
         TabStop         =   True
         Text            =   "https://encrypted.google.com/search?q=%PARAMETER%"
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   39
         Underline       =   ""
         UseFocusRing    =   True
         Visible         =   True
         Width           =   261
      End
      Begin TextField SearchDisplayName
         AcceptTabs      =   ""
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &hFFFFFF
         Bold            =   ""
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   91
         LimitText       =   0
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Mask            =   ""
         Password        =   ""
         ReadOnly        =   ""
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   4
         TabStop         =   True
         Text            =   "Google"
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   63
         Underline       =   ""
         UseFocusRing    =   True
         Visible         =   True
         Width           =   261
      End
      Begin Label Label3
         AutoDeactivate  =   True
         Bold            =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   10
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Multiline       =   ""
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   4
         TabStop         =   True
         Text            =   "URL:"
         TextAlign       =   2
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   41
         Transparent     =   True
         Underline       =   ""
         Visible         =   True
         Width           =   68
      End
      Begin Label Label4
         AutoDeactivate  =   True
         Bold            =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   10
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Multiline       =   ""
         Scope           =   0
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   4
         TabStop         =   True
         Text            =   "Name:"
         TextAlign       =   2
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   64
         Transparent     =   True
         Underline       =   ""
         Visible         =   True
         Width           =   68
      End
      Begin ComboBox ComboBox1
         AutoComplete    =   False
         AutoDeactivate  =   True
         Bold            =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         InitialValue    =   "\r\nGoogle\r\nYahoo\r\nBing\r\nDuckDuckGo\r\nBaidu\r\n"
         Italic          =   ""
         Left            =   91
         ListIndex       =   0
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   90
         Underline       =   ""
         UseFocusRing    =   True
         Visible         =   True
         Width           =   261
      End
      Begin Label Label6
         AutoDeactivate  =   True
         Bold            =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   10
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Multiline       =   ""
         Scope           =   0
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   4
         TabStop         =   True
         Text            =   "Preset:"
         TextAlign       =   2
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   90
         Transparent     =   True
         Underline       =   ""
         Visible         =   True
         Width           =   68
      End
      Begin GroupBox SortDirGroup
         AutoDeactivate  =   True
         Bold            =   ""
         Caption         =   "Sort direction"
         Enabled         =   False
         Height          =   120
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   183
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   33
         Underline       =   ""
         Visible         =   True
         Width           =   160
         Begin RadioButton SortDirection1
            AutoDeactivate  =   True
            Bold            =   ""
            Caption         =   "Ascending (0->1)"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "SortDirGroup"
            Italic          =   ""
            Left            =   198
            LockBottom      =   ""
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   ""
            LockTop         =   True
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0
            TextUnit        =   0
            Top             =   55
            Underline       =   ""
            Value           =   ""
            Visible         =   True
            Width           =   137
         End
         Begin RadioButton SortDirection2
            AutoDeactivate  =   True
            Bold            =   ""
            Caption         =   "Descending (1->0)"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "SortDirGroup"
            Italic          =   ""
            Left            =   198
            LockBottom      =   ""
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   ""
            LockTop         =   True
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0
            TextUnit        =   0
            Top             =   101
            Underline       =   ""
            Value           =   ""
            Visible         =   True
            Width           =   137
         End
      End
      Begin GroupBox GroupBox2
         AutoDeactivate  =   True
         Bold            =   ""
         Caption         =   "Sort by"
         Enabled         =   True
         Height          =   120
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   19
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   33
         Underline       =   ""
         Visible         =   True
         Width           =   160
         Begin RadioButton SortType3
            AutoDeactivate  =   True
            Bold            =   ""
            Caption         =   "Do not sort"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox2"
            Italic          =   ""
            Left            =   34
            LockBottom      =   ""
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   ""
            LockTop         =   True
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0
            TextUnit        =   0
            Top             =   119
            Underline       =   ""
            Value           =   True
            Visible         =   True
            Width           =   100
         End
         Begin RadioButton SortType2
            AutoDeactivate  =   True
            Bold            =   ""
            Caption         =   "Scan result"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox2"
            Italic          =   ""
            Left            =   34
            LockBottom      =   ""
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   ""
            LockTop         =   True
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0
            TextUnit        =   0
            Top             =   87
            Underline       =   ""
            Value           =   ""
            Visible         =   True
            Width           =   100
         End
         Begin RadioButton SortType1
            AutoDeactivate  =   True
            Bold            =   ""
            Caption         =   "Scanner name"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox2"
            Italic          =   ""
            Left            =   34
            LockBottom      =   ""
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   ""
            LockTop         =   True
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0
            TextUnit        =   0
            Top             =   55
            Underline       =   ""
            Value           =   ""
            Visible         =   True
            Width           =   137
         End
      End
      Begin CheckBox UploadUnknown
         AutoDeactivate  =   True
         Bold            =   ""
         Caption         =   "Permit file upload"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   20
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   8
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   135
         Underline       =   ""
         Value           =   False
         Visible         =   True
         Width           =   130
      End
      Begin Label Label9
         AutoDeactivate  =   True
         Bold            =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   189
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Multiline       =   ""
         Scope           =   0
         Selectable      =   False
         TabIndex        =   9
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   "Proxy type:"
         TextAlign       =   2
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   65
         Transparent     =   True
         Underline       =   ""
         Visible         =   True
         Width           =   68
      End
      Begin Label Label8
         AutoDeactivate  =   True
         Bold            =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   16
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Multiline       =   ""
         Scope           =   0
         Selectable      =   False
         TabIndex        =   8
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   "Proxy server:"
         TextAlign       =   2
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   41
         Transparent     =   True
         Underline       =   ""
         Visible         =   True
         Width           =   106
      End
      Begin TextField ProxyServer
         AcceptTabs      =   ""
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &hFFFFFF
         Bold            =   ""
         Border          =   True
         CueText         =   "IP or Hostname"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   128
         LimitText       =   0
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Mask            =   ""
         Password        =   ""
         ReadOnly        =   ""
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   ""
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   41
         Underline       =   ""
         UseFocusRing    =   True
         Visible         =   True
         Width           =   220
      End
      Begin ComboBox ProxyTypes
         AutoComplete    =   False
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         InitialValue    =   "HTTP\r\nHTTP 1.0\r\nSocks 4\r\nSocks 4A\r\nSocks 5\r\nSocks 5A"
         Italic          =   False
         Left            =   263
         ListIndex       =   0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   5
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   64
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   85
      End
      Begin CheckBox UseSSL
         AutoDeactivate  =   True
         Bold            =   ""
         Caption         =   "Use SSL"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   20
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   7
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   115
         Underline       =   ""
         Value           =   False
         Visible         =   True
         Width           =   100
      End
      Begin Label Label10
         AutoDeactivate  =   True
         Bold            =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   16
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Multiline       =   ""
         Scope           =   0
         Selectable      =   False
         TabIndex        =   7
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   "Proxy Port:"
         TextAlign       =   2
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   65
         Transparent     =   True
         Underline       =   ""
         Visible         =   True
         Width           =   106
      End
      Begin TextField ProxyPort
         AcceptTabs      =   ""
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &hFFFFFF
         Bold            =   ""
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   128
         LimitText       =   0
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Mask            =   ""
         Password        =   ""
         ReadOnly        =   ""
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   1080
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   65
         Underline       =   ""
         UseFocusRing    =   True
         Visible         =   True
         Width           =   56
      End
      Begin TextField ProxyUsername
         AcceptTabs      =   ""
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &hFFFFFF
         Bold            =   ""
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   127
         LimitText       =   0
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Mask            =   ""
         Password        =   ""
         ReadOnly        =   ""
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   ""
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   89
         Underline       =   ""
         UseFocusRing    =   True
         Visible         =   True
         Width           =   220
      End
      Begin Label Label11
         AutoDeactivate  =   True
         Bold            =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   16
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Multiline       =   ""
         Scope           =   0
         Selectable      =   False
         TabIndex        =   6
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   "Proxy User:"
         TextAlign       =   2
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   89
         Transparent     =   True
         Underline       =   ""
         Visible         =   True
         Width           =   105
      End
      Begin Label Label12
         AutoDeactivate  =   True
         Bold            =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   16
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Multiline       =   ""
         Scope           =   0
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   "Proxy Password:"
         TextAlign       =   2
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   112
         Transparent     =   True
         Underline       =   ""
         Visible         =   True
         Width           =   105
      End
      Begin TextField ProxyPassword
         AcceptTabs      =   ""
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &hFFFFFF
         Bold            =   ""
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   127
         LimitText       =   0
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Mask            =   ""
         Password        =   True
         ReadOnly        =   ""
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   ""
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   112
         Underline       =   ""
         UseFocusRing    =   True
         Visible         =   True
         Width           =   220
      End
   End
   Begin VTHash.VTSession VTSession1
      APIKey          =   ""
      Enabled         =   True
      Height          =   32
      Index           =   -2147483648
      Left            =   376
      LockedInPosition=   False
      Scope           =   1
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   22
      Visible         =   True
      Width           =   32
   End
   Begin ComboBox nic
      AutoComplete    =   False
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   124
      ListIndex       =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   -58
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   False
      Width           =   220
   End
   Begin Label Label7
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   12
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Multiline       =   ""
      Scope           =   0
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Network interface:"
      TextAlign       =   2
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   -58
      Transparent     =   True
      Underline       =   ""
      Visible         =   False
      Width           =   106
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  mKonami = mKonami + Str(Asc(key))
		  
		  If InStr(mKonami, "30303131282928299897") > 0 Then
		    mKonami = ""
		    mKonamiCount = mKonamiCount + 1
		    Select Case mKonamiCount
		    Case 1
		      Call MsgBox("There are no easter eggs in this program.", 16, "Do not do that again")
		    Case 2
		      Call MsgBox("I wasn't kidding, there are no easter eggs in this program.", 16, "Did I stutter?")
		    Case 3
		      Call MsgBox("Won't somebody please think of the children!?", 16, "Think of them!")
		    Else
		      If mKonamiCount Mod 2 = 0 Then
		        Call MsgBox("I can't take much more of this!", 16, "No more!")
		      Else
		        Call MsgBox("Oh, wait. Yes, I can.", 16, "Whoops")
		      End If
		    End Select
		  End If
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  AlgSelect.AddRow("MD5")
		  AlgSelect.AddRow("SHA1")
		  If Win32.KernelVersion >= 6.0 Then AlgSelect.AddRow("SHA256")
		  Select Case VTHash.GetConfig("Algorithm")
		  Case Win32.Crypto.CALG_MD5
		    AlgSelect.ListIndex = 0
		  Case Win32.Crypto.CALG_SHA1
		    AlgSelect.ListIndex = 1
		  Case Win32.Crypto.CALG_SHA256
		    If Win32.KernelVersion >= 6.0 Then
		      AlgSelect.ListIndex = 2
		    Else
		      AlgSelect.ListIndex = 1
		    End If
		  Else
		    If Win32.KernelVersion >= 6.0 Then
		      AlgSelect.ListIndex = 2 ' default to sha256
		    Else
		      AlgSelect.ListIndex = 1 ' XP doesn't support sha256
		    End If
		  End Select
		  autolog.Value = VTHash.GetConfig("AutoSave")
		  If VTHash.GetConfig("AutosavePath") <> Nil Then
		    LogFile.Text = FolderItem(VTHash.GetConfig("AutosavePath")).AbsolutePath
		    LogType.ListIndex = VTHash.GetConfig("DefaultFormat")
		  End If
		  
		  APIText.Text = VTHash.GetConfig("APIKey")
		  CommentSig.Text = VTHash.GetConfig("CommentSignature")
		  SearchDisplayName.Text = VTHash.GetConfig("SearchEngineName")
		  SearchURL.Text = VTHash.GetConfig("SearchEngineURL")
		  UseSSL.Value = VTHash.GetConfig("UseSSL")
		  
		  If HasConfig("PermitUploads") Then
		    UploadUnknown.Value = VTHash.GetConfig("PermitUploads")
		  Else
		    UploadUnknown.Value = True
		  End If
		  
		  If HasConfig("SortType") Then
		    SortDir = VTHash.GetConfig("SortDirection")
		    SortType = VTHash.GetConfig("SortType")
		  Else
		    SortDir = Listbox.SortAscending
		    SortType = -1
		  End If
		  If SortDir = Listbox.SortDescending Then
		    SortDirection2.Value = True
		  Else
		    SortDirection1.Value = True
		  End If
		  
		  Select Case SortType
		  Case SORT_SCANNER
		    SortType1.Value = True
		  Case SORT_RESULT
		    SortType2.Value = True
		  End Select
		  
		  If VTHash.HasConfig("ProxyType") Then
		    mProxyType = libcURL.ProxyType(VTHash.GetConfig("ProxyType").Int32Value)
		    ProxyServer.Text = VTHash.GetConfig("ProxyAddress")
		    Select Case mProxyType
		    Case libcURL.ProxyType.HTTP
		      ProxyTypes.ListIndex = 0
		    Case libcURL.ProxyType.HTTP1_0
		      ProxyTypes.ListIndex = 1
		    Case libcURL.ProxyType.SOCKS4
		      ProxyTypes.ListIndex = 2
		    Case libcURL.ProxyType.SOCKS4A
		      ProxyTypes.ListIndex = 3
		    Case libcURL.ProxyType.SOCKS5
		      ProxyTypes.ListIndex = 4
		    Case libcURL.ProxyType.SOCKS5_HOSTNAME
		      ProxyTypes.ListIndex = 5
		    End Select
		    ProxyPort.Text = Str(VTHash.GetConfig("ProxyPort"), "#####")
		    ProxyUsername.Text = VTHash.GetConfig("ProxyUsername")
		    ProxyPassword.Text = VTHash.GetConfig("ProxyPassword")
		  End If
		  
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h21
		Private KeyValid As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mKonami As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mKonamiCount As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mProxyType As libcURL.ProxyType
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mWaiter As WaitWindow
	#tag EndProperty

	#tag Property, Flags = &h21
		Private NewSearchName As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private NewSearchURL As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SortDir As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SortType As Integer = -1
	#tag EndProperty


	#tag Constant, Name = eicarhash, Type = String, Dynamic = False, Default = \"44D88612FEA8A8F36DE82E1278ABB02F", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = SORT_RESULT, Type = Double, Dynamic = False, Default = \"2", Scope = Private
	#tag EndConstant

	#tag Constant, Name = SORT_SCANNER, Type = Double, Dynamic = False, Default = \"0", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events PushButton2
	#tag Event
		Sub Action()
		  If KeyValid Then
		    VTHash.SetConfig("APIKey", APIText.Text)
		  Else
		    If MsgBox("The API key is invalid.", 49 + 256, "VT Hash Check - Wrong key length") = 1 Then
		      Self.Close
		    Else
		      Return
		    End If
		  End If
		  
		  If SearchDisplayName.Text.Trim <> "" And SearchURL.Text.Trim <> "" Then
		    VTHash.SetConfig("SearchEngineName", SearchDisplayName.Text.Trim)
		    VTHash.SetConfig("SearchEngineURL", SearchURL.Text.Trim)
		  Else
		    VTHash.SetConfig("SearchEngineName", "")
		    VTHash.SetConfig("SearchEngineURL", "")
		  End If
		  
		  Select Case AlgSelect.Text
		  Case "SHA1"
		    VTHash.SetConfig("Algorithm", Win32.Crypto.CALG_SHA1)
		  Case "SHA256"
		    VTHash.SetConfig("Algorithm", Win32.Crypto.CALG_SHA256)
		  Case "MD5"
		    VTHash.SetConfig("Algorithm", Win32.Crypto.CALG_MD5)
		  Else
		    VTHash.SetConfig("Algorithm", Win32.Crypto.CALG_MD5)
		  End Select
		  VTHash.SetConfig("AutoSave", autolog.Value)
		  VTHash.SetConfig("DefaultFormat", LogType.ListIndex)
		  Dim gf As FolderItem = GetFolderItem(LogFile.Text)
		  If Not gf.Exists Then
		    gf.CreateAsFolder
		  End If
		  VTHash.SetConfig("AutoSavePath", gf)
		  VTHash.SetConfig("CommentSignature", CommentSig.Text)
		  VTHash.SetConfig("UseSSL", UseSSL.Value)
		  VTHash.SetConfig("PermitUploads", UploadUnknown.Value)
		  VTHash.SetConfig("SortDirection", SortDir)
		  VTHash.SetConfig("SortType", SortType)
		  
		  'If nic.ListIndex > -1 And nic.RowTag(nic.ListIndex) IsA NetworkInterface Then
		  'Dim ip As String = NetworkInterface(nic.RowTag(nic.ListIndex)).IPAddress
		  'VTHash.SetConfig("NetworkInterface", ip)
		  'End If
		  VTHash.SetConfig("ProxyAddress", ProxyServer.Text)
		  VTHash.SetConfig("ProxyUsername", ProxyUsername.Text)
		  VTHash.SetConfig("ProxyPassword", ProxyPassword.Text)
		  VTHash.SetConfig("ProxyType", Integer(mProxyType))
		  VTHash.SetConfig("ProxyPort", Val(ProxyPort.Text))
		  Close()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton3
	#tag Event
		Sub Action()
		  Self.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton5
	#tag Event
		Sub Action()
		  SuggestionBox.ShowModal
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Canvas1
	#tag Event
		Sub Paint(g As Graphics)
		  If KeyValid Then
		    g.DrawPicture(icon_validation_good, 0, 0)
		    Me.HelpTag = "Test API Key"
		  Else
		    g.DrawPicture(icon_validation_fail, 0, 0)
		    Me.HelpTag = "Invalid API Key"
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  Me.MouseCursor = System.Cursors.FingerPointer
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  Me.MouseCursor = System.Cursors.StandardPointer
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  #pragma Unused X
		  #pragma Unused Y
		  If Not KeyValid Then
		    ShowURL("https://www.virustotal.com/en/faq/#virustotal-api")
		  ElseIf MsgBox("Would you like to send a test request to virustotal.com?", 4 + 32, "VT Hash Check - Test API key now?") = 6 Then
		    VTSession1.APIKey = APIText.Text
		    VTSession1.GetReport(eicarhash, VTHash.RequestType.FileReport)
		    Return True
		  End If
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  #pragma Unused X
		  #pragma Unused Y
		  mWaiter = New WaitWindow
		  mWaiter.ShowWithin(Self)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events APIText
	#tag Event
		Sub TextChange()
		  if me.Text.Len <> 64 Then
		    KeyValid = False
		  Else
		    KeyValid = True
		  end if
		  Canvas1.Invalidate(False)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  If VTHash.GetConfig("APIKey").Trim <> "" Then Me.Text = VTHash.GetConfig("APIKey").Trim
		  if VTHash.GetConfig("APIKey").Trim.Len <> 64 Then
		    KeyValid = False
		  Else
		    KeyValid = True
		  end if
		  Canvas1.Invalidate(False)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events autolog
	#tag Event
		Sub Action()
		  GroupBox1.Enabled = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton1
	#tag Event
		Sub Action()
		  Dim f As FolderItem = SelectFolder()
		  If f <> Nil Then
		    LogFile.Text = f.AbsolutePath
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ComboBox1
	#tag Event
		Sub Change()
		  SearchDisplayName.Text = Me.Text
		  Select Case Me.Text
		  Case "Google"
		    SearchURL.Text = "https://encrypted.google.com/search?q=%PARAMETER%"
		  Case "Yahoo"
		    SearchURL.Text = "https://search.yahoo.com/search?p=%PARAMETER%"
		  Case "Bing"
		    SearchURL.Text = "https://www.bing.com/search?q=%PARAMETER%"
		  Case "DuckDuckGo"
		    SearchURL.Text = "https://duckduckgo.com/?q=%PARAMETER%"
		  Case "Baidu"
		    SearchURL.Text = "https://www.baidu.com/s?wd=%PARAMETER%"
		  Else
		    SearchURL.Text = ""
		  End Select
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SortDirection1
	#tag Event
		Sub Action()
		  SortDir = Listbox.SortAscending
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SortDirection2
	#tag Event
		Sub Action()
		  SortDir = Listbox.SortDescending
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SortType3
	#tag Event
		Sub Action()
		  SortDirGroup.Enabled = Not Me.Value
		  SortType = Listbox.SortNone
		  SortDirection1.Caption = "Ascending (0->1)"
		  SortDirection2.Caption = "Descending (1->0)"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SortType2
	#tag Event
		Sub Action()
		  SortDirGroup.Enabled = Me.Value
		  SortType = SORT_RESULT
		  SortDirection1.Caption = "Negative on top"
		  SortDirection2.Caption = "Positive on top"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SortType1
	#tag Event
		Sub Action()
		  SortDirGroup.Enabled = Me.Value
		  SortType = SORT_SCANNER
		  SortDirection1.Caption = "Alphabetical"
		  SortDirection2.Caption = "Reverse Alphabetical"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ProxyTypes
	#tag Event
		Sub Change()
		  Select Case Me.Text
		  Case "Socks 4"
		    mProxyType = libcURL.ProxyType.SOCKS4
		  Case "Socks 4A"
		    mProxyType = libcURL.ProxyType.SOCKS4A
		  Case "Socks 5"
		    mProxyType = libcURL.ProxyType.SOCKS5
		  Case "Socks 5A"
		    mProxyType = libcURL.ProxyType.SOCKS5_HOSTNAME
		  Case "HTTP"
		    mProxyType = libcURL.ProxyType.HTTP
		  Case "HTTP 1.0"
		    mProxyType = libcURL.ProxyType.HTTP1_0
		  End Select
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events VTSession1
	#tag Event
		Sub Response(ResponseObject As JSONItem, HTTPStatus As Integer)
		  #pragma Unused HTTPStatus
		  mWaiter.Close
		  mWaiter = Nil
		  If ResponseObject <> Nil And ResponseObject.HasName("total") Then
		    MsgBox("API key test succeeded.")
		  ElseIf ResponseObject <> Nil Then
		    MsgBox("API key test failed." + EndOfLine + "Response code: " + _
		    ResponseObject.Value("response_code") + EndOfLine + "Message: " + ResponseObject.Value("verbose_msg"))
		  Else
		    MsgBox("API key test failed.")
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub Error(cURLCode As Integer)
		  mWaiter.Close
		  mWaiter = Nil
		  
		  If Me.GetStatusCode  = 0 Then
		    VTHash.HandleCurlError(Me, cURLCode)
		  Else
		    Call MsgBox("API key test failed. (HTTP" + Str(Me.GetStatusCode, "000") +")", 16, "VT Hash Check - Invalid API key")
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events nic
	#tag Event
		Sub Open()
		  'Dim ip As String
		  'If VTHash.HasConfig("NetworkInterface") Then ip = VTHash.GetConfig("NetworkInterface")
		  '
		  'For i As Integer = 0 To System.NetworkInterfaceCount - 1
		  'Dim n As NetworkInterface = System.GetNetworkInterface(i)
		  'If n.IPAddress <> "0.0.0.0" Then
		  'Me.AddRow(n.IPAddress)
		  'Me.RowTag(i) = n
		  'If n.IPAddress = ip Then Me.ListIndex = i
		  'End If
		  'Next
		  '
		  
		End Sub
	#tag EndEvent
#tag EndEvents
