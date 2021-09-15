<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="modelo.Usuario"%>
<%@page import="modelo.BancoDeDados"%>
<%@page import="services.UploadSeguroService" %>

<%request.setCharacterEncoding("UTF-8");
UploadSeguroService upload = new UploadSeguroService("arquivos", 1, "jpg, jpeg, png, gif");

String nome = upload.getParameter(request, "nome");
String user = upload.getParameter(request, "user"); 
String sexo = upload.getParameter(request, "sexo");
String email = upload.getParameter(request, "email");
String senha = upload.getParameter(request, "senha");
String notificacoes = upload.getParameter(request, "notificacoes");
String termos = upload.getParameter(request, "termos");

String imagem = null;

if(upload.doUploadParameter(request, application, "imagem")){
	// O upload deu certo, então apenas pego o nome do arquivo para salvar no objeto livro
	imagem = upload.getNomeArquivo();
} else { // Caso tenha ocorrido algum problema no upload
	// Verifica se existe alguma mensagem de erro para exibir
	if(upload.getErro() != null){
		out.println("<p style='color: red;'>Erro no upload: " + upload.getErro() + "</p>");	
	}
} 

Usuario novoUsuario = new Usuario(nome, user, sexo, email, senha, notificacoes, termos, imagem);

BancoDeDados banco = new BancoDeDados();

banco.cadastrarUsuario(novoUsuario);


%>

<!DOCTYPE html>
<html>
<head>
<title>Usuario</title>
<link rel="stylesheet" href="style.css">
<meta charset="utf-8" />
</head>
<body>
	<div align="center">
		<p style="color: green;">Usuário cadastrado com sucesso!</p>
		<h2>Usuário</h2>
		<table>
			<% if(novoUsuario.getFile() != null){ %> <!-- Faço a exibição da imagem apenas se o atributo arquivoImagemCapa for != null -->
			<tr>
				<td rowspan="10"><img src="<%=novoUsuario.getFile()%>" width="250px" /> </td>
			</tr>
			<% } %>
			<tr>
				<th>Nome:</th>
				<td><%=novoUsuario.getNome()%></td>
			</tr>
			<tr>
				<th>User:</th>
				<td><%=novoUsuario.getUser()%></td>
			</tr>
			<tr>
				<th>Sexo:</th>
				<td><%=novoUsuario.getSexo()%></td>
			</tr>
			<tr>
				<th>Data:</th>
				<td><%=novoUsuario.getEmail()%></td>
			</tr>
			<tr>
				<th>Local:</th>
				<td><%=novoUsuario.getSenha()%></td>
			</tr>
			<tr>
				<th>Notificacoes:</th>
				<td><%=novoUsuario.getNotificacoes()%></td>
			</tr>
			<tr>
				<th>Termos:</th>
				<td><%=novoUsuario.getTermos()%></td>
			</tr>	
		</table>
	</div>
</body>

</html>