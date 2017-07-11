package ar.edu.unlam.integrador.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import org.hibernate.validator.constraints.NotEmpty;

import ar.edu.unlam.integrador.entities.base.BaseEntity;


@Entity
@Table(name="actividad")
@NamedQueries(value={
        @NamedQuery(
                name="obtenerTodoActividad", 
                query="SELECT object(e) FROM Actividad e "
        )
})
public class Actividad extends BaseEntity {

	@Id
    @Column(name="idActividad", unique=true, nullable=false)
    private int idActividad;
	
	@NotEmpty
	@Column(name="descripcion", nullable=false)
    private String descripcion;
	
	@NotEmpty
	@Column(name="objetivo", nullable=false)
    private String objetivo;
	
	@NotEmpty
	@Column(name="nombreJSP", nullable=false)
    private String nombreJSP;

	public int getIdActividad() {
		return idActividad;
	}

	public void setIdActividad(int idActividad) {
		this.idActividad = idActividad;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getObjetivo() {
		return objetivo;
	}

	public void setObjetivo(String objetivo) {
		this.objetivo = objetivo;
	}

	public String getNombreJSP() {
		return nombreJSP;
	}

	public void setNombreJSP(String nombreJSP) {
		this.nombreJSP = nombreJSP;
	}
}
