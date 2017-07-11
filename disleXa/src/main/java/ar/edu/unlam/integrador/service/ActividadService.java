package ar.edu.unlam.integrador.service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import ar.edu.unlam.integrador.dao.ActividadDao;
import ar.edu.unlam.integrador.entities.Actividad;
import ar.edu.unlam.integrador.service.base.BaseService;

public class ActividadService extends BaseService{
	private ActividadDao actividadDao;
	
	public ActividadService(){
		
	}

	public ActividadDao getActividadDao() {
		return actividadDao;
	}

	public void setActividadDao(ActividadDao actividadDao) {
		this.actividadDao = actividadDao;
	}

	public void altaActividad(Actividad actividad) {
		getActividadDao().agregarInstitucion(actividad);
		
	}

	public Set<Actividad> obtenerTodo() {
		return getActividadDao().obtenerTodo();
	}
}
