package ar.edu.unlam.integrador.service;

import ar.edu.unlam.integrador.dao.PersonaDao;
import ar.edu.unlam.integrador.entities.Persona;
import ar.edu.unlam.integrador.service.base.BaseService;

public class PersonaService extends BaseService{
	
	private PersonaDao personaDao;
	public PersonaService(){		
	}
	public PersonaDao getPersonaDao() {
		return personaDao;
	}
	public void setPersonaDao(PersonaDao personaDao) {
		this.personaDao = personaDao;
	}
	
	public Persona obtenerPersona(){
		Persona persona = getPersonaDao().obtenerPersona();
		return persona;
	}

	public Persona buscarPorIdUsuario(int idUsuario){
		return getPersonaDao().obtenerPorIdUsuario(idUsuario);
	}
}
