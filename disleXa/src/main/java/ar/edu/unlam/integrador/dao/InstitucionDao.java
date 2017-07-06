package ar.edu.unlam.integrador.dao;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

import ar.edu.unlam.integrador.dao.base.BaseDao;
import ar.edu.unlam.integrador.entities.Institucion;

public class InstitucionDao extends BaseDao<Institucion> {
	
    public Institucion obtenerInstitucion(){
        Session s = getSessionFactory().getCurrentSession();

        Criteria criteria = s.createCriteria(Institucion.class, "INSTITUCION");
  
        //TODO busca 1 siempre, pasar por parametros
        Criterion r1 = Restrictions.eq("INSTITUCION.idUsuario", 1);
        criteria.add(r1);
        
        Institucion res = (Institucion) criteria.uniqueResult();
        return res;
    }
    
    public void agregarInstitucion(Institucion institucion){
    	Session s = getSessionFactory().getCurrentSession();
    	
    	s.save(institucion);
    }

	public Institucion obtenerPorId(int id) {
		Session s = getSessionFactory().getCurrentSession();
		Institucion institucion = (Institucion) s.get(Institucion.class, id);
		return institucion;
	}	
}
