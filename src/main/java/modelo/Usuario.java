package modelo;

public class Usuario<UploadSeguroService> {
	
	private String nome;
	private String user;
	private String sexo;
	private String email;
	private String senha;
	private String notificacoes;
	private String termos;
	private String file;
	
	public Usuario(String nome, String user, String sexo, String email, String senha, String notificacoes,
			String termos, String file) {
		super();
		this.nome = nome;
		this.user = user;
		this.sexo = sexo;
		this.email = email;
		this.senha = senha;
		this.notificacoes = notificacoes;
		this.termos = termos;
		this.file = file;
	}

	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	public String getNotificacoes() {
		return notificacoes;
	}
	public void setNotificacoes(String notificacoes) {
		this.notificacoes = notificacoes;
	}
	public String getTermos() {
		return termos;
	}
	public void setTermos(String termos) {
		this.termos = termos;
	}

	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}
	
}
