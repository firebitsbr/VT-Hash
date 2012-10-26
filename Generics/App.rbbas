#tag Class
Protected Class App
Inherits Application
	#tag Event
		Sub Open()
		  Dim args() As String = Tokenize(System.CommandLine)
		  args.Remove(0)
		  ParseArgs(args)
		  
		  KillApiKeyFile()
		  LoadConf()
		  
		  If toBeHashed = Nil Then
		    toBeHashed = App.ExecutableFile
		  End If
		  
		  'Dim rw As New resultWindow
		  'Dim tis As TextInputStream
		  'Dim s As String
		  'Dim f As FolderItem = GetFolderItem("F:\Projects\Git Repository\VT-Hash\sampleresult.json")
		  'toBeHashed = f
		  'tis = tis.Open(f)
		  's = tis.ReadAll
		  'tis.Close
		  '
		  'rw.showList(New JSONItem(s))
		  'Quit11
		End Sub
	#tag EndEvent

	#tag Event
		Function UnhandledException(error As RuntimeException) As Boolean
		  If error IsA JSONException Then
		    Call MsgBox("Illegal Response Format", 0, "VirusTotal.com provided an improperly formatted response." + EndOfLine + "Please try again later.")
		    Quit(1)
		  Else
		    errorHandler.Show
		    Dim t as Introspection.TypeInfo = Introspection.GetType(error)
		    Dim theStack As String = Join(error.CleanStack, EndOfLine)
		    errorHandler.errorStack.Text = t.Name + ": " + error.Message + "(" + Str(error.ErrorNumber) + ")" + EndOfLine + theStack
		    Return True
		    
		  End If
		End Function
	#tag EndEvent


	#tag Method, Flags = &h1
		Protected Sub KillApiKeyFile()
		  Dim f As FolderItem = SpecialFolder.ApplicationData.Child("Boredom Software")
		  If Not f.Exists Then Return
		  
		  Dim keyfile As FolderItem = SpecialFolder.ApplicationData.Child("Boredom Software").Child("VT Hash").Child("api.key")
		  If keyfile = Nil Then Return
		  if keyfile.isFound = ERROR_NO_ERROR Then
		    Dim tis As TextInputStream
		    tis = tis.Open(keyfile)
		    VTAPIKey = tis.ReadAll.Trim
		    tis.Close
		    keyfile.Delete
		    if VTAPIKey.Len <> 64 Then
		      MsgBox("Bad Virus Total API Key!")
		      settswin.ShowModal
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadConf()
		  Dim f As FolderItem = SpecialFolder.ApplicationData.Child("Boredom Software")
		  If Not f.Exists Then
		    f.CreateAsFolder()
		  End If
		  f = f.Child("VT Hash")
		  If Not f.Exists Then
		    f.CreateAsFolder()
		  End If
		  f = f.Child("config.dat")
		  
		  If f.Exists Then
		    Dim tis As TextInputStream
		    Dim s As String
		    Dim j As JSONItem
		    tis = tis.Open(f)
		    s = tis.ReadAll
		    tis.Close
		    j = New JSONItem(s)
		    
		    useSSL = j.Value("Use SSL")
		    If j.Value("Use SHA1").BooleanValue Then
		      algorithm = "SHA1"
		    Else
		      algorithm = "MD5"
		    End If
		    
		    Dim g As FolderItem = GetFolderItem(j.Value("Default Save Directory"))
		    If g <> Nil Then autosavePath = g
		    defaultFormat = j.Value("Default Save Format")
		    autosave = j.Value("Autosave Results")
		    VTAPIKey = j.Value("API Key")
		  Else
		    SaveSettings()
		    LoadConf
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ParseArgs(Args() As String)
		  For i As Integer = 0 To UBound(Args)
		    Select Case Args(i)
		    Case "--about"
		      about.ShowModal()
		      Quit()
		      
		    Case "--ssl"
		      useSSL = True
		      
		    Case "--sha1"
		      algorithm = "SHA1"
		      
		    Else
		      if Left(Args(i), 6) = "--API=" Then
		        Dim s As String = NthField(Args(i), "=", 2)
		        If s.Len = 64 Then
		          VTAPIKey = s
		        Else
		          MsgBox("An invalid API key was specified on the command line.")
		        End If
		      Else
		        Dim f As FolderItem = GetFolderItem(Args(i))
		        If f <> Nil Then
		          If f.AbsolutePath <> App.ExecutableFile.AbsolutePath Then
		            toBeHashed = f
		          End If
		        End If
		      end if
		    End Select
		  Next
		End Sub
	#tag EndMethod


	#tag Constant, Name = kEditClear, Type = String, Dynamic = False, Default = \"&Delete", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&Delete"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"&Delete"
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = False, Default = \"&Quit", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"E&xit"
	#tag EndConstant

	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Ctrl+Q"
	#tag EndConstant


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass