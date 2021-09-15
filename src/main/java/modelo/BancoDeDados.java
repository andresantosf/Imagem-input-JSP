package modelo;

import java.util.ArrayList;

public class BancoDeDados {

	private static ArrayList<Usuario> usuarioCadastrados = new ArrayList<Usuario>();
	
	public void cadastrarUsuario(Usuario usuario) {
		usuarioCadastrados.add(usuario);
	}

	public ArrayList<Usuario> buscarTodosLivros() {
		return usuarioCadastrados;
	}

	public Usuario buscarUsuarioPorNome(String nome) {
		for (int i = 0; i < usuarioCadastrados.size(); i++) {
			Usuario usuario = usuarioCadastrados.get(i);
			if (usuario.getNome().equals(nome)) {
				return usuario;
			}
		}
		return null; //
	}
}
