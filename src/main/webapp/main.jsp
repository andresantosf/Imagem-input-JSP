<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Cadastro Usuário</title>
</head>
<body>
   
<div id="container">
	<form action="cadastrarUsuario.jsp" method="post" enctype="multipart/form-data">
		<h1>Cadastro Usuário</h1>
		<div>	
			<label for="nome">Nome: </label> 
			<input type="text" id="nome" name="nome" maxlength="100"><br><br>
		</div>
		<div>
             <label>Foto para perfil:</label> 
             <label for="arquivos" id="arquivo">Adicionar imagem</label>
             <input type="file" name="arquivos" id ="arquivos"><br><br>
        </div> 
		<div>
			<label for="user">Apelido: </label> 
			<input type="text" id="user" name="user" maxlength="50"><br><br>
		</div>
		<div>
			<label for="email">Email: </label> 
			<input type="email" id="email" name="email" maxlength="100" placeholder="exemple@email.com"><br><br>
		</div>
		<div>
			<label for="senha">Senha: </label> 
			<input type="password" id="senha" name="senha" minlength="8" maxlength="32"><br><br>
		</div>
		<div>
			<label for="confirmSenha">Confirme sua senha: </label> 
			<input type="password" id="confirmSenha" name="confirmSenha" minlength="8" maxlength="32"><br><br>
		</div>
		<div>
			<label>Sexo:</label> 
			<span><input type="radio" name="sexo" id="masculino" class="check" value="masculino"><label for="masculino">Masculino</label></span>
			<span><input type="radio" name="sexo" id="feminino" class="check" value="feminino"><label for="feminino">Feminino</label></span> <br><br>
		</div>
		<div>
			<span><input type="checkbox" id="notificacoes" class="check" name="notificacoes"><label for="notificacoes" class="label">Aceito receber notificações de novas atividades cadastradas</label><br></span>
			<span><input type="checkbox" id="termos" class="check" name="termos"><label for="termos" class="label">Termos e condições</label><br></span>
		</div>
	
		<input type="submit" value="Enviar" id="botao">  
	</form>
</div>
</body>
</html>