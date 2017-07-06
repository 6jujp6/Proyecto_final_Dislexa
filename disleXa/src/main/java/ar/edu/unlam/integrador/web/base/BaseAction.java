package ar.edu.unlam.integrador.web.base;

import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import ar.edu.unlam.integrador.service.FactoryService;

public class BaseAction extends ActionSupport implements SessionAware {

	private static final long serialVersionUID = 1L;
	public Map<String, Object> session = null;

	// FACTORY DEL SERVICES DE LA BD
	private static FactoryService factoryService;

	public BaseAction() {
		setearBeanFactoryService();
		session = ActionContext.getContext().getSession();
	}

	private void setearBeanFactoryService() {
		WebApplicationContext context = WebApplicationContextUtils
				.getRequiredWebApplicationContext(ServletActionContext.getServletContext());
		BaseAction.factoryService = (FactoryService) context.getBean("factoryService");
	}

	// /** COMPRUEBA SI LA SESSION ES NUEVA Y GUARDA EL REGISTRO EN EL LOG **/
	// private void comprobarSessionNueva(HttpServletRequest request){
	// HttpSession session = request.getSession();
	// if(session.isNew()){
	// }
	// }

	// @SuppressWarnings("unchecked")
	// private Map<String, Object> getApplicationSession() {
	// if (session.get("application") == null) {
	// session.put("application", new HashMap<String, Object>());
	// }
	// return (Map<String, Object>) session.get("application");
	// }
	//
	// private void cleanApplicationSession(String action) {
	// Map<String, Object> application = this.getApplicationSession();
	// for (Map.Entry<String, Object> entry : application.entrySet()) {
	// if (!entry.getKey().equalsIgnoreCase(action)) {
	// entry.setValue(null);
	// }
	// }
	// }

	/**
	 * Mantiene las variables de session solamente para el Action que se esta
	 * ejecutando, cuando se ejecuta otro estas son eliminadas.
	 * 
	 * @return Map<String, Object> - Session del Action
	 */
	// @SuppressWarnings("unchecked")
	// public Map<String, Object> getSession() {
	// this.cleanApplicationSession(this.getClass().getName());
	// Map<String, Object> application = this.getApplicationSession();
	// if (application.get(this.getClass().getName()) == null) {
	// application.put(this.getClass().getName(), new HashMap<String,
	// Object>());
	// }
	// return (Map<String, Object>) application.get(this.getClass().getName());
	// }

	public static FactoryService getFactoryService() {
		return factoryService;
	}

	public void setSession(Map<String, Object> arg0) {
		this.session = (Map<String, Object>) session;
	}

	public Map<String, Object> getSession() {
		return session;
	}
}
