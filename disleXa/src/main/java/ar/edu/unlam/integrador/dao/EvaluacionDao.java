package ar.edu.unlam.integrador.dao;

import java.util.List;

import org.hibernate.Session;

import ar.edu.unlam.integrador.dao.base.BaseDao;
import ar.edu.unlam.integrador.entities.Actividad;
import ar.edu.unlam.integrador.entities.AlumnoPaciente;
import ar.edu.unlam.integrador.entities.Evaluacion;

public class EvaluacionDao extends BaseDao<Evaluacion>{

	public void agregarEvaluacion(Evaluacion evaluacion) {
		Session s = getSessionFactory().getCurrentSession();
		
		s.save(evaluacion);
	}
	
	public void modificarEvaluacion(Evaluacion evaluacion) {
		Session s = getSessionFactory().getCurrentSession();
		
		s.update(evaluacion);
	}

	public Evaluacion obtenerPorId(int id) {
		Session s = getSessionFactory().getCurrentSession();
		Evaluacion evaluacion = (Evaluacion) s.get(Evaluacion.class, id);
		return evaluacion;		
	}
}
