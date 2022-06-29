package Clases;

public class Desercion {
	private int idDesercion;
	private int cantidadHombres;
	private int cantidadMujeres;
	private int numeroMatriculados;
	private double tasa_desercion;
	private int periodo;
	private String periodoString;
	private int caracteristica;
	private String caracteristicaString;
	
	public int getIdDesercion() {
		return idDesercion;
	}
	public void setIdDesercion(int idDesercion) {
		this.idDesercion = idDesercion;
	}
	public int getCantidadHombres() {
		return cantidadHombres;
	}
	public void setCantidadHombres(int cantidadHombres) {
		this.cantidadHombres = cantidadHombres;
	}
	public int getCantidadMujeres() {
		return cantidadMujeres;
	}
	public void setCantidadMujeres(int cantidadMujeres) {
		this.cantidadMujeres = cantidadMujeres;
	}
	public int getNumeroMatriculados() {
		return numeroMatriculados;
	}
	public void setNumeroMatriculados(int numeroMatriculados) {
		this.numeroMatriculados = numeroMatriculados;
	}
	public double getTasa_desercion() {
		return tasa_desercion;
	}
	public void setTasa_desercion(double tasa_desercion) {
		this.tasa_desercion = tasa_desercion;
	}
	public int getPeriodo() {
		return periodo;
	}
	public void setPeriodo(int periodo) {
		this.periodo = periodo;
	}
	public String getPeriodoString() {
		return periodoString;
	}
	public void setPeriodoString(String periodoString) {
		this.periodoString = periodoString;
	}
	public int getCaracteristica() {
		return caracteristica;
	}
	public void setCaracteristica(int caracteristica) {
		this.caracteristica = caracteristica;
	}
	public String getCaracteristicaString() {
		return caracteristicaString;
	}
	public void setCaracteristicaString(String caracteristicaString) {
		this.caracteristicaString = caracteristicaString;
	}
	@Override
	public String toString() {
		return "" + cantidadHombres + "";
	}
	
}
