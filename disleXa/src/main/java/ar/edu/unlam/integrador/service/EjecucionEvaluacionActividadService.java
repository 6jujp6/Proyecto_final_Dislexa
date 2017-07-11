package ar.edu.unlam.integrador.service;

import java.util.List;

import ar.edu.unlam.integrador.dao.EjecucionEvaluacionActividadDao;
import ar.edu.unlam.integrador.entities.EjecucionEvaluacion;
import ar.edu.unlam.integrador.entities.EjecucionEvaluacionActividad;
import ar.edu.unlam.integrador.service.base.BaseService;

public class EjecucionEvaluacionActividadService extends BaseService{
	private EjecucionEvaluacionActividadDao ejecucionEvaluacionActividadDao;

	public EjecucionEvaluacionActividadDao getEjecucionEvaluacionActividadDao() {
		return ejecucionEvaluacionActividadDao;
	}

	public void setEjecucionEvaluacionActividadDao(EjecucionEvaluacionActividadDao ejecucionEvaluacionActividadDao) {
		this.ejecucionEvaluacionActividadDao = ejecucionEvaluacionActividadDao;
	}

	public void altaEjecucionEvaluacionActividad(EjecucionEvaluacionActividad ejecEvaluacionAct) {
		getEjecucionEvaluacionActividadDao().agregarEjecucionEvaluacionActividad(ejecEvaluacionAct);
	}

	public List<EjecucionEvaluacionActividad> obtenerActividadesPorEjecucionEvaluacion(
			EjecucionEvaluacion ejecucionEvaluacion) {
		return getEjecucionEvaluacionActividadDao().obtenerActividadesPorEjecucionEnaluacion(ejecucionEvaluacion);
	}

	public EjecucionEvaluacionActividad obtenerPorId(int id) {
		return getEjecucionEvaluacionActividadDao().obtenerPorId(id);
	}

	public void actualizar(EjecucionEvaluacionActividad actividad) {
		getEjecucionEvaluacionActividadDao().actualizar(actividad);
	} 
}
