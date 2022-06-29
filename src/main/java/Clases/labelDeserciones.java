package Clases;

public class labelDeserciones {
	private String anhio_Desercion;
	private String semestre_Desercion;
	
	 public labelDeserciones() {
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
	
	
	@Override
	public String toString() {
		return "'" + anhio_Desercion + "'";
	}
	
	
}
