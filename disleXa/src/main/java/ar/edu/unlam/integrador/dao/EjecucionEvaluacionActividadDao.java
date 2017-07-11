package ar.edu.unlam.integrador.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

import ar.edu.unlam.integrador.dao.base.BaseDao;
import ar.edu.unlam.integrador.entities.EjecucionEvaluacion;
import ar.edu.unlam.integrador.entities.EjecucionEvaluacionActividad;
import ar.edu.unlam.integrador.entities.Usuario;

public class EjecucionEvaluacionActividadDao extends BaseDao<EjecucionEvaluacionActividad>{

	public void agregarEjecucionEvaluacionActividad(EjecucionEvaluacionActividad ejecEvaluacionAct) {
		Session s = getSessionFactory().getCurrentSession();
		s.save(ejecEvaluacionAct);
	}

	@SuppressWarnings("unchecked")
	public List<EjecucionEvaluacionActividad> obtenerActividadesPorEjecucionEnaluacion(
			EjecucionEvaluacion ejecucionEvaluacion) {
		Session s = getSessionFactory().getCurrentSession();
		List<EjecucionEvaluacionActividad> listaResultado = new ArrayList<EjecucionEvaluacionActividad>();
		
		Criteria criteria = s.createCriteria(EjecucionEvaluacionActividad.class, "EJECUCION_EVALUACION_ACTIVIDAD");
		
		//criteria.createAlias("ejecucionEvaluacion", "EJECUCION_EVALUACION");
		
		Criterion r5 = Restrictions.eq("EJECUCION_EVALUACION_ACTIVIDAD.ejecucionEvaluacion", ejecucionEvaluacion);
    	criteria.add(r5);
    	
        listaResultado.addAll(criteria.list());
        return listaResultado;
	}

	public EjecucionEvaluacionActividad obtenerPorId(int id) {
		Session s = getSessionFactory().getCurrentSession();
		EjecucionEvaluacionActividad ejecucionEvaluacionActividad = (EjecucionEvaluacionActividad) s.get(EjecucionEvaluacionActividad.class, id);
		return ejecucionEvaluacionActividad;
	}

	public void actualizar(EjecucionEvaluacionActividad actividad) {
		Session s = getSessionFactory().getCurrentSession();
		
		s.update(actividad);
	}
}
