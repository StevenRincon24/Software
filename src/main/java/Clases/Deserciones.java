package Clases;

public class Deserciones {

	private String anhio_Desercion;
	private String semestre_Desercion;
	private int cantidad_Desertores;
	
	public Deserciones() {
		// TODO Auto-generated constructor stub
	}
	
	public String getAnhio_Desercion() {
		return anhio_Desercion;
	}
	public void setAnhio_Desercion(String anhio_Desercion) {
		this.anhio_Desercion = anhio_Desercion;
	}
	public String getSemestre_Desercion() {
		return semestre_Desercion;
	}
	public void setSemestre_Desercion(String semestre_Desercion) {
		this.semestre_Desercion = semestre_Desercion;
	}
	public int getCantidad_Desertores() {
		return cantidad_Desertores;
	}
	public void setCantidad_Desertores(int cantidad_Desertores) {
		this.cantidad_Desertores = cantidad_Desertores;
	}

	@Override
	public String toString() {
		return "" + cantidad_Desertores + "";
	}

	
}
