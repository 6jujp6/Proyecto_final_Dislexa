package ar.edu.unlam.integrador.service;

import java.util.List;

import ar.edu.unlam.integrador.dao.EvaluacionDao;
import ar.edu.unlam.integrador.entities.Actividad;
import ar.edu.unlam.integrador.entities.Evaluacion;
import ar.edu.unlam.integrador.service.base.BaseService;

public class EvaluacionService extends BaseService {
	private EvaluacionDao evaluacionDao;
		
	public EvaluacionService(){
		
	}
	
	public EvaluacionDao getEvaluacionDao() {
		return evaluacionDao;
	}

	public void setEvaluacionDao(EvaluacionDao evaluacionDao) {
		this.evaluacionDao = evaluacionDao;
	}

	public void altaEvaluacion(Evaluacion evaluacion) {
		getEvaluacionDao().agregarEvaluacion(evaluacion);
	}

	public Evaluacion obtenerPorId(int id) {
		return getEvaluacionDao().obtenerPorId(id);
	}
}
