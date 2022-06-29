package Daos;

import java.sql.ResultSet;
import java.util.ArrayList;

import Clases.Desercion;
import Clases.Deserciones;
import Clases.labelDeserciones;
import Conexion.Conexion;

public class Daos_Desercion {
	private Desercion deserciones;
	private labelDeserciones labeldeserciones;
	private Conexion conexion;
	private ResultSet rs;
	
	public Daos_Desercion() {
		deserciones = new Desercion();
		conexion = new Conexion();
	}
	
	
	public ArrayList<labelDeserciones> ArregloLabel2() {
		ArrayList<labelDeserciones> label = new ArrayList<labelDeserciones>();
		String consulta = "select p.periodo from periodo as p, desercion as d where p.idperiodo= d.periodo_idperiodo;";
		try {
			rs = conexion.seleccionarDatos(consulta);
			while (rs.next()) {
				labeldeserciones = new labelDeserciones();
				labeldeserciones.setAnhio_Desercion(rs.getString(1));
				
				label.add(labeldeserciones);
			}
			conexion.desconectar();
			return label;
		} catch (Exception e) {
			System.out.println(e.getMessage());
            conexion.desconectar();
            return null;
		}
	}	
	
	public ArrayList<Desercion>  cantidadDesercionesHombres() {
		ArrayList<Desercion> cantidadDesertores = new ArrayList<Desercion>();
		String consulta = "select cantidad_hombres from desercion;";
		try {
			rs = conexion.seleccionarDatos(consulta);
			while (rs.next()) {
				deserciones = new Desercion();
				deserciones.setCantidadHombres(rs.getInt(1));
				cantidadDesertores.add(deserciones);
			}
			conexion.desconectar();
			return cantidadDesertores;
		} catch (Exception e) {
			System.out.println(e.getMessage());
            conexion.desconectar();
            return null;
		}
	}
	
	public ArrayList<Desercion> cantidadDesercionesMujeres() {
		ArrayList<Desercion> cantidadDesertores = new ArrayList<Desercion>();
		String consulta = "select cantidad_mujeres from desercion;";
		try {
			rs = conexion.seleccionarDatos(consulta);
			while (rs.next()) {
				deserciones = new Desercion();
				deserciones.setCantidadHombres(rs.getInt(1));
				cantidadDesertores.add(deserciones);
			}
			conexion.desconectar();
			return cantidadDesertores;
		} catch (Exception e) {
			System.out.println(e.getMessage());
            conexion.desconectar();
            return null;
		}
	}
	

	
}
