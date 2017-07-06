package ar.edu.unlam.integrador.service;

import ar.edu.unlam.integrador.dao.InstitucionDao;
import ar.edu.unlam.integrador.entities.Institucion;
import ar.edu.unlam.integrador.service.base.BaseService;

public class InstitucionService extends BaseService {
	
	private InstitucionDao institucionDao;
	
	public InstitucionService(){
	}

	public Institucion obtenerInstitucion() {
		Institucion institucion= getInstitucionDao().obtenerInstitucion();
		return institucion;
	}
	
	public InstitucionDao getInstitucionDao() {
		return institucionDao;
	}

	public void setInstitucionDao(InstitucionDao institucionDao) {
		this.institucionDao = institucionDao;
	}
	
	public void altaInstitucion(Institucion institucion){
		getInstitucionDao().agregarInstitucion(institucion);
	}

	public Institucion buscarPorId(int id) {
		return getInstitucionDao().obtenerPorId(id);
	}
}
