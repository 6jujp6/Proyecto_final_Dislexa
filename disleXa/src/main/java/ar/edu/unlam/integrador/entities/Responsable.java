package ar.edu.unlam.integrador.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="responsable")
@PrimaryKeyJoinColumn(name = "idResponsable", referencedColumnName = "idPersona")
@NamedQueries(value={
        @NamedQuery(
                name="obtenerTodoResponsable", 
                query="SELECT object(e) FROM Responsable e "
        )
})
public class Responsable extends Persona{

	@Column(name="relacion")
	private String relacion;

	public String getRelacion() {
		return relacion;
	}

	public void setRelacion(String relacion) {
		this.relacion = relacion;
	}
}
