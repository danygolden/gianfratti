<!-- #include file="clsUpload.asp" -->
<%  
If (Request.TotalBytes > 1) Then
	Dim objUpload, lngLoop
	dim directory
	directory=server.MapPath(".") & "\ImageScanned\"


	Set objUpload = New clsUpload
	
	For lngLoop = 0 to objUpload.Files.Count - 1
	    objUpload.Files.Item(lngLoop).Save directory
	    filename = directory + objUpload.Files.Item(lngLoop).FileName
	    ProcessedFile = objUpload.Files.Item(lngLoop).FileName
	Next
	Set objUpload = Nothing
end if
%>