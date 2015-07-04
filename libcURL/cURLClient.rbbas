#tag Class
Class cURLClient
Inherits libcURL.cURLManager
	#tag Method, Flags = &h0
		Sub Get(URL As String, WriteTo As Writeable = Nil)
		  ' Asynchronously performs a retrieval using protocol-appropriate semantics (http GET, ftp RETR, etc.)
		  ' The protocol is inferred from the URL; explictly specify the protocol in the URL to avoid bad guesses.
		  ' WriteTo is an optional Writeable object (e.g. BinaryStream); downloaded data will be written to this
		  ' object directly. If WriteTo is Nil then use the GetDownloadedData method to get any downloaded data.
		  ' The transfer will be performed on the event loop (main thread).
		  
		  Me.Perform(URL, Nil, WriteTo)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Get(URL As String, WriteTo As Writeable = Nil) As Boolean
		  ' Synchronously performs a retrieval using protocol-appropriate semantics (http GET, ftp RETR, etc.)
		  ' The protocol is inferred from the URL; explictly specify the protocol in the URL to avoid bad guesses.
		  ' WriteTo is an optional Writeable object (e.g. BinaryStream); downloaded data will be written to this
		  ' object directly. If WriteTo is Nil then use the GetDownloadedData method to get any downloaded data.
		  ' This method will block the calling thread until the transfer completes. All events will be raised
		  ' on the calling thread.
		  
		  Return Me.Perform(URL, Nil, WriteTo)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Head(URL As String)
		  ' Asynchronously performs a headers-only operation using protocol-appropriate semantics (http HEAD, etc.)
		  ' The protocol is inferred from the URL; explictly specify the protocol in the URL to avoid bad guesses.
		  ' The transfer will be performed on the event loop (main thread).
		  
		  Call Me.SetOption(libcURL.Opts.NOBODY, True)
		  Me.Perform(URL, Nil, Nil)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Head(URL As String) As Boolean
		  ' Synchronously performs a headers-only operation using protocol-appropriate semantics (http HEAD, etc.)
		  ' The protocol is inferred from the URL; explictly specify the protocol in the URL to avoid bad guesses.
		  ' This method will block the calling thread until the transfer completes. All events will be raised
		  ' on the calling thread.
		  
		  Call Me.SetOption(libcURL.Opts.NOBODY, True)
		  Return Me.Perform(URL, Nil, Nil)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Post(URL As String, FormData As Dictionary, WriteTo As Writeable = Nil)
		  ' Asynchronously POST the passed FormData via HTTP(S) using multipart/form-data encoding. The FormData dictionary
		  ' contains NAME:VALUE pairs comprising HTML form elements. NAME is a string containing the form-element name; VALUE
		  ' may be a string or a FolderItem.
		  ' The protocol is inferred from the URL; explictly specify the protocol in the URL to avoid bad guesses.
		  ' WriteTo is an optional Writeable object (e.g. BinaryStream); downloaded data will be written to this
		  ' object directly. If WriteTo is Nil then use the GetDownloadedData method to get any downloaded data.
		  ' The transfer will be performed on the event loop (main thread).
		  
		  Me.SetFormData(FormData)
		  Me.Perform(URL, Nil, WriteTo)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Post(URL As String, FormData As Dictionary, WriteTo As Writeable = Nil) As Boolean
		  ' Asynchronously POST the passed FormData via HTTP(S) using multipart/form-data encoding. The FormData dictionary
		  ' contains NAME:VALUE pairs comprising HTML form elements. NAME is a string containing the form-element name; VALUE
		  ' may be a string or a FolderItem.
		  ' WriteTo is an optional Writeable object (e.g. BinaryStream); downloaded data will be written to this
		  ' object directly. If WriteTo is Nil then use the GetDownloadedData method to get any downloaded data.
		  ' This method will block the calling thread until the transfer completes. All events will be raised
		  ' on the calling thread.
		  
		  Me.SetFormData(FormData)
		  Return Me.Perform(URL, Nil, WriteTo)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Post(URL As String, PostFields() As String, WriteTo As Writeable = Nil)
		  ' Asynchronously POST the passed FormData via HTTP(S) using application/x-www-form-urlencoded. The FormData dictionary
		  ' contains NAME:VALUE pairs comprising HTML form elements. NAME is a string containing the form-element name; VALUE
		  ' is a string containing the form-element value.
		  ' The protocol is inferred from the URL; explictly specify the protocol in the URL to avoid bad guesses.
		  ' WriteTo is an optional Writeable object (e.g. BinaryStream); downloaded data will be written to this
		  ' object directly. If WriteTo is Nil then use the GetDownloadedData method to get any downloaded data.
		  ' The transfer will be performed on the event loop (main thread).
		  
		  Me.SetFormData(PostFields)
		  Me.Perform(URL, Nil, WriteTo)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Post(URL As String, PostFields() As String, WriteTo As Writeable = Nil) As Boolean
		  ' Asynchronously POST the passed PostFields via HTTP(S) using application/x-www-form-urlencoded. The PostFields array
		  ' contains "NAME=VALUE" strings comprising HTML form elements.
		  ' WriteTo is an optional Writeable object (e.g. BinaryStream); downloaded data will be written to this
		  ' object directly. If WriteTo is Nil then use the GetDownloadedData method to get any downloaded data.
		  ' This method will block the calling thread until the transfer completes. All events will be raised
		  ' on the calling thread.
		  
		  Me.SetFormData(PostFields)
		  Return Me.Perform(URL, Nil, WriteTo)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Put(URL As String, Data As MemoryBlock, WriteTo As Writeable = Nil)
		  Dim bs As New BinaryStream(Data)
		  Me.Put(URL, bs, WriteTo)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Put(URL As String, Data As MemoryBlock, WriteTo As Writeable = Nil) As Boolean
		  Dim bs As New BinaryStream(Data)
		  Return Me.Put(URL, bs, WriteTo)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Put(URL As String, ReadFrom As Readable, WriteTo As Writeable = Nil)
		  ' Asynchronously performs an upload using protocol-appropriate semantics (http PUT, ftp STOR, etc.)
		  ' The protocol is inferred from the URL; explictly specify the protocol in the URL to avoid bad guesses. The
		  ' path part of the URL specifies the remote directory and file name to store the file under.
		  ' ReadFrom is an object that implements the Readable interface (e.g. BinaryStream). The uploaded data will be
		  ' read from this object.
		  ' WriteTo is an optional Writeable object (e.g. BinaryStream); downloaded data will be written to this
		  ' object directly. If WriteTo is Nil then use the GetDownloadedData method to get any downloaded data.
		  ' The transfer will be performed on the event loop (main thread).
		  
		  Me.EasyItem.UploadMode = True
		  Me.Perform(URL, ReadFrom, WriteTo)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Put(URL As String, ReadFrom As Readable, WriteTo As Writeable = Nil) As Boolean
		  ' Asynchronously performs an upload using protocol-appropriate semantics (http PUT, ftp STOR, etc.)
		  ' The protocol is inferred from the URL; explictly specify the protocol in the URL to avoid bad guesses.
		  ' WriteTo is an optional Writeable object (e.g. BinaryStream); downloaded data will be written to this
		  ' object directly. If WriteTo is Nil then use the GetDownloadedData method to get any downloaded data.
		  ' This method will block the calling thread until the transfer completes. All events will be raised
		  ' on the calling thread.
		  
		  Me.EasyItem.UploadMode = True
		  Return Me.Perform(URL, ReadFrom, WriteTo)
		End Function
	#tag EndMethod


	#tag Note, Name = Using this class
		This class provides synchronous and asynchronous transfers with full support for RB/Xojo threads. Transfers are initiated
		by calling one of the transfer methods: Get, Post, and Put. Despite the HTTP-specific names, Get and Put can be used to tranfer 
		files over any protocol libcURL supports.
		
		There are two versions of each method: synchronous and asynchronous. When dealing with libcURL and REALbasic, a major issue
		comes up with threading. RB/Xojo threads, being platform-generic abstractions, are not the sort of threads that libcURL understands. 
		What's more, the sort of threads that libcURL does understand happens to be the only such thread in any RB application: the main
		thread itself. The practical upshot being that using libcURL on a RB thread wasn't very useful, and using libcURL at all meant
		that your entire application stopped responding for the duration of the transfer. This class is a solution to this problem.
		
		The synchronous versions of the transfer methods will perform the entire transfer on the calling thread, and then return a
		Boolean indicating success (True) or failure (False). The asynchronous versions will activate a Timer that performs a little
		bit of the transfer on every run of the event loop. Both versions will raise events, and both versions can ignore the events
		by using the GetDownloadedData, GetResponseHeaders, and GetStatusCode methods.
	#tag EndNote


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass