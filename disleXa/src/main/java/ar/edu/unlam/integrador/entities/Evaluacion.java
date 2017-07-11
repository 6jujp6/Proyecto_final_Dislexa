package ar.edu.unlam.integrador.entities;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

import ar.edu.unlam.integrador.entities.base.BaseEntity;

@Entity
@Table(name="evaluacion")
public class Evaluacion extends BaseEntity{
	@Id
    @Column(name="idEvaluacion", unique=true, nullable=false)
    private int idEvaluacion;
	
	@NotEmpty
	@Column(name="descripcion", nullable=false)
    private String descripcion;
	
	@ManyToMany(fetch = FetchType.EAGER,cascade=CascadeType.ALL)  
    @JoinTable(name="evaluacion_actividad", joinColumns=@JoinColumn(name="idEvaluacion"), inverseJoinColumns=@JoinColumn(name="idActividad"))
	private Set<Actividad> actividades;

	public int getIdEvaluacion() {
		return idEvaluacion;
	}

	public void setIdEvaluacion(int idEvaluacion) {
		this.idEvaluacion = idEvaluacion;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public Set<Actividad> getActividades() {
		return actividades;
	}

	public void setActividades(Set<Actividad> actividades) {
		this.actividades = actividades;
	}
}
