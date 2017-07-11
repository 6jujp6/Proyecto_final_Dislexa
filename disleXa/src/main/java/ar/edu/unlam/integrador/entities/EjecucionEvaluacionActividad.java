package ar.edu.unlam.integrador.entities;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import ar.edu.unlam.integrador.entities.base.BaseEntity;

@Entity
@Table(name="ejecucion_evaluacion_actividad")
@NamedQueries(value={
        @NamedQuery(
                name="obtenerTodoEjecucionEvaluacionActividad", 
                query="SELECT object(e) FROM EjecucionEvaluacionActividad e "
        )
})
public class EjecucionEvaluacionActividad extends BaseEntity {
	
	@Id
	@Column(name="idEjecucion_evaluacion_actividad", unique=true, nullable=false)
	private int idEjecucionEvaluacionActividad;
	
	@ManyToOne(optional=false)
    @JoinColumn(name="idActividad")
    private Actividad actividad;
	
	@ManyToOne(cascade=CascadeType.ALL, optional=false)
    @JoinColumn(name="idEjecucion_evaluacion")
    private EjecucionEvaluacion ejecucionEvaluacion;
	
	@Column(name="resolucion")
    private String resolucion;

	public int getIdEjecucionEvaluacionActividad() {
		return idEjecucionEvaluacionActividad;
	}

	public void setIdEjecucionEvaluacionActividad(int idEjecucionEvaluacionActividad) {
		this.idEjecucionEvaluacionActividad = idEjecucionEvaluacionActividad;
	}

	public Actividad getActividad() {
		return actividad;
	}

	public void setActividad(Actividad actividad) {
		this.actividad = actividad;
	}

	public EjecucionEvaluacion getEjecucionEvaluacion() {
		return ejecucionEvaluacion;
	}

	public void setEjecucionEvaluacion(EjecucionEvaluacion ejecucionEvaluacion) {
		this.ejecucionEvaluacion = ejecucionEvaluacion;
	}

	public String getResolucion() {
		return resolucion;
	}

	public void setResolucion(String resolucion) {
		this.resolucion = resolucion;
	}
}
