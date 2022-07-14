package Daos;

import java.sql.ResultSet;
import java.util.ArrayList;

import Clases.*;
import Conexion.Conexion;

public class Daos_Caracterisitica {

	private Caracteristica caracterisitca;
	private Conexion conexion;
	private ResultSet rs;
	
	public Daos_Caracterisitica() {
		caracterisitca = new Caracteristica();
		conexion = new Conexion();
	}
	
	public ArrayList<Caracteristica> mostrarNombreCaracteristica(){
		ArrayList<Caracteristica> mostrarCaracteristica = new ArrayList<Caracteristica>();
		String consulta = "select id_caracteristica, nombre_caracteristica from caracteristica;";
		
		try {
			rs = conexion.seleccionarDatos(consulta);
			while (rs.next()) {
				caracterisitca = new Caracteristica();
				caracterisitca.setId_caracteristica(rs.getInt(1));
				caracterisitca.setNombre_Caracteristica(rs.getString(2));
				
				mostrarCaracteristica.add(caracterisitca);
			}
			conexion.desconectar();
			return mostrarCaracteristica;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			conexion.desconectar();
			return null;
		}
		
	}
	
}
