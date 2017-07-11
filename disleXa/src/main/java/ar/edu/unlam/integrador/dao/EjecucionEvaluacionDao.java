package ar.edu.unlam.integrador.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

import ar.edu.unlam.integrador.dao.base.BaseDao;
import ar.edu.unlam.integrador.entities.AlumnoPaciente;
import ar.edu.unlam.integrador.entities.Curso;
import ar.edu.unlam.integrador.entities.EjecucionEvaluacion;

public class EjecucionEvaluacionDao extends BaseDao<EjecucionEvaluacion> {

	public void agregarEjecucionEvaluacion(EjecucionEvaluacion ejecucionEvaluacion) {
		Session s = getSessionFactory().getCurrentSession();
		s.save(ejecucionEvaluacion);
	}

	public EjecucionEvaluacion obtenerPorId(int id) {
		Session s = getSessionFactory().getCurrentSession();
		EjecucionEvaluacion ejecucionEvaluacion = (EjecucionEvaluacion) s.get(EjecucionEvaluacion.class, id);
		return ejecucionEvaluacion;
	}

	@SuppressWarnings("unchecked")
	public EjecucionEvaluacion obtenerPorAlumno(AlumnoPaciente alumnoPaciente) {
		Session s = getSessionFactory().getCurrentSession();
		
		Criteria criteria = s.createCriteria(EjecucionEvaluacion.class, "EJECUCION_EVALUACION");
		
		Criterion r5 = Restrictions.eq("EJECUCION_EVALUACION.alumnoPaciente",alumnoPaciente);
    	criteria.add(r5);
    	
    	EjecucionEvaluacion res = (EjecucionEvaluacion) criteria.uniqueResult();
         return res;
	}

	public void actualizar(EjecucionEvaluacion ejecucionEvaluacion) {
		Session s = getSessionFactory().getCurrentSession();
		s.update(ejecucionEvaluacion);
	}

}
