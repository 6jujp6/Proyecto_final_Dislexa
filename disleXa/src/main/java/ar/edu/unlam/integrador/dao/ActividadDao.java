package ar.edu.unlam.integrador.dao;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Query;
import org.hibernate.Session;

import ar.edu.unlam.integrador.dao.base.BaseDao;
import ar.edu.unlam.integrador.entities.Actividad;

public class ActividadDao extends BaseDao<Actividad>{

	@SuppressWarnings("unchecked")
	public Set<Actividad> obtenerTodo() {
		 List<Actividad> listaResultado = new ArrayList<Actividad>();
	        Session s = getSessionFactory().getCurrentSession();
	        Query q = s.getNamedQuery("obtenerTodoActividad");
	        
	        listaResultado.addAll(q.list());
	        return new HashSet<Actividad>(listaResultado);
	        
	}
	
	public void agregarInstitucion(Actividad actividad) {
		Session s = getSessionFactory().getCurrentSession();		
		s.save(actividad);
		
	}
    
}
