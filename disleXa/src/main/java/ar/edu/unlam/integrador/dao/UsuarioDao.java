package ar.edu.unlam.integrador.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

import ar.edu.unlam.integrador.dao.base.BaseDao;
import ar.edu.unlam.integrador.entities.Usuario;

public class UsuarioDao extends BaseDao<Usuario>{
	@SuppressWarnings("unchecked")
	public List<Usuario> obtenerTodo() {
		 List<Usuario> listaResultado = new ArrayList<Usuario>();
	        Session s = getSessionFactory().getCurrentSession();
	        Query q = s.getNamedQuery("obtenerTodoUsuario");
	        
	        listaResultado.addAll(q.list());
	        return listaResultado;
	}
	
	public Usuario obtenerPorLogin(String mail, String password){
		Session s = getSessionFactory().getCurrentSession();
        Criteria criteria = s.createCriteria(Usuario.class, "USUARIO");
  
        Criterion r1 = Restrictions.eq("USUARIO.mail", mail);
        criteria.add(r1);
        
        Criterion r2 = Restrictions.eq("USUARIO.password", password);
        criteria.add(r2);
        
        Usuario res = (Usuario) criteria.uniqueResult();
        return res;
	}
}
