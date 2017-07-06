
package ar.edu.unlam.integrador.dao;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

import ar.edu.unlam.integrador.dao.base.BaseDao;
import ar.edu.unlam.integrador.entities.Persona;

public class PersonaDao extends BaseDao<Persona> {
    
	public Persona obtenerPersona(){
        Session s = getSessionFactory().getCurrentSession();
        Criteria criteria = s.createCriteria(Persona.class, "PERSONA");
  
        //TODO busca 1 siempre, pasar por parametros
        Criterion r1 = Restrictions.eq("PERSONA.idPersona", 1);
        criteria.add(r1);
        
        Persona res = (Persona) criteria.uniqueResult();
        return res;
    }

	public Persona obtenerPorIdUsuario(int idUsuario) {
	    Session s = getSessionFactory().getCurrentSession();
        Criteria criteria = s.createCriteria(Persona.class, "PERSONA");
  
        criteria.createAlias("usuario", "USUARIO");
        Criterion r1 = Restrictions.eq("USUARIO.idUsuario", idUsuario);
        criteria.add(r1);
        
        Persona res = (Persona) criteria.uniqueResult();
        return res;
	}
}
