package Clases;

public class labelCarac {
	private String anhio_Caract1;
	private String semestre_Caract1;
	
	 public labelCarac() {
		// TODO Auto-generated constructor stub
	}
	
	public String getAnhio_Caract1() {
		return anhio_Caract1;
	}
	public void setAnhio_Caract1(String anhio_Caract1) {
		this.anhio_Caract1 = anhio_Caract1;
	}
	public String getSemestre_Caract1() {
		return semestre_Caract1;
	}
	public void setSemestre_Caract1(String semestre_Caract1) {
		this.semestre_Caract1 = semestre_Caract1;
	}
	
	
	@Override
	public String toString() {
		return "'" + anhio_Caract1 + "'";
	}
	
	
}
