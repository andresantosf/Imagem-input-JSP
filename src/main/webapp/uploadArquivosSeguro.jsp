<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="services.UploadSeguroService" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	UploadSeguroService upload = new UploadSeguroService("arquivos", 1, "jpg, jpeg, png, gif");


	if(upload.doUpload(request, application)){
		out.println("<p style='color: green;'>Arquivo salvo com sucesso em \"" + upload.getNomeArquivo() + "\"</p>");
		out.println("  <img src=\"" + upload.getNomeArquivo() + "\" >");
	} else { // Caso tenha ocorrido algum problema no upload
		// Verifica se existe alguma mensagem de erro para exibir
		if(upload.getErro() != null){
			out.println("<p style='color: red;'>" + upload.getErro() + "</p>");	
		}
	}

%>


<h1>Upload de Arquivos</h1>
<form action="uploadArquivosSeguro.jsp" method="post" enctype="multipart/form-data">
	Arquivo: <input type="file" name="arquivo" /><br>
	<input type="submit" value="Enviar" />
</form>
</body>
</html>


