<%
archivo = Request("file")
Set objStream = Server.CreateObject("ADODB.Stream")
objStream.Type = 1
objStream.Open
objStream.LoadFromFile Server.MapPath(archivo)
Response.AddHeader "Content-Disposition", "attachment; filename=" &
archivo
Response.ContentType = "application/octet-stream"
Response.BinaryWrite objStream.Read
objStream.Close
Set objStream = Nothing
response.write"Descargando archivo"
%>