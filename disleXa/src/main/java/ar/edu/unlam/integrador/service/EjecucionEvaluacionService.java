package ar.edu.unlam.integrador.service;

import java.util.List;

import ar.edu.unlam.integrador.dao.EjecucionEvaluacionDao;
import ar.edu.unlam.integrador.entities.AlumnoPaciente;
import ar.edu.unlam.integrador.entities.EjecucionEvaluacion;
import ar.edu.unlam.integrador.service.base.BaseService;

public class EjecucionEvaluacionService extends BaseService{

		private EjecucionEvaluacionDao ejecucionEvaluacionDao;

		public EjecucionEvaluacionDao getEjecucionEvaluacionDao() {
			return ejecucionEvaluacionDao;
		}

		public void setEjecucionEvaluacionDao(EjecucionEvaluacionDao ejecucionEvaluacionDao) {
			this.ejecucionEvaluacionDao = ejecucionEvaluacionDao;
		}

		public void altaEjecucionEvaluacion(EjecucionEvaluacion ejecucionEvaluacion) {
			getEjecucionEvaluacionDao().agregarEjecucionEvaluacion(ejecucionEvaluacion);			
		}

		public EjecucionEvaluacion obtenerPorId(int id) {
			return getEjecucionEvaluacionDao().obtenerPorId(id);
		}

		public EjecucionEvaluacion obtenerPorAlumno(AlumnoPaciente alumnoPaciente) {
			return getEjecucionEvaluacionDao().obtenerPorAlumno(alumnoPaciente);
		}

		public void actualizar(EjecucionEvaluacion ejecucionEvaluacion) {
			getEjecucionEvaluacionDao().actualizar(ejecucionEvaluacion);
		}
}
