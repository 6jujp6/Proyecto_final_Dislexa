package ar.edu.unlam.integrador.service;

import java.util.List;

import ar.edu.unlam.integrador.dao.InstitucionDao;
import ar.edu.unlam.integrador.dao.PersonaDao;
import ar.edu.unlam.integrador.dao.UsuarioDao;
import ar.edu.unlam.integrador.entities.Persona;
import ar.edu.unlam.integrador.entities.Usuario;
import ar.edu.unlam.integrador.service.base.BaseService;

public class UsuarioService extends BaseService{
	
	private UsuarioDao usuarioDao;
	
	public UsuarioService(){
		
	}

	public UsuarioDao getUsuarioDao() {
		return usuarioDao;
	}

	public void setUsuarioDao(UsuarioDao usuarioDao) {
		this.usuarioDao = usuarioDao;
	}

	public List<Usuario> obtenerTodo() {
		List<Usuario> lista= getUsuarioDao().obtenerTodo();
		return lista;
	}
	
	public Usuario buscarPorLogin(String mail, String password){
		return getUsuarioDao().obtenerPorLogin(mail, password);
	}
}
