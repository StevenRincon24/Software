package Daos;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Clases.Desercion;
import Clases.Estudiantes_Inscritos;
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
	
	public boolean agregarDesercion(int cantidad_Hombres, int cantidad_Mujeres, double tasa_desercion, int periodo) {
		String consulta = "insert into desercion values(null," +cantidad_Hombres + "," + cantidad_Mujeres + ","+ tasa_desercion +","+periodo+",3 );";
		System.out.println(consulta);
		if (conexion.insertarDatos(consulta)) {
            conexion.desconectar();
            return true;

        } else { 
            conexion.desconectar();
            return false;
        }
	}
	
	public Boolean validarPeriodo(int periodo) throws SQLException {
		String consulta = "select cantidad_hombres, cantidad_mujeres from desercion where periodo_idperiodo=" + periodo+ ";";
		rs = conexion.seleccionarDatos(consulta);
		System.out.println(consulta);
		while( rs.next() ) {
			deserciones = new Desercion();
			deserciones.setCantidadHombres(rs.getInt(1));
			deserciones.setCantidadMujeres(rs.getInt(2));
			
			
			if (deserciones.getCantidadHombres()!=0  && deserciones.getCantidadMujeres()!=0) {
				return false;
			}
		}
		return true;
	}
	

	public ArrayList<Desercion> lista() {
		ArrayList<Desercion> mostrarInformacion = new ArrayList<Desercion>();
		String consulta="select  d.cantidad_hombres, d.cantidad_mujeres, d.tasa_desercion, p.cantidad_matriculados, p.periodo from periodo as p\r\n"
				+ ",desercion as d where p.idperiodo=d.periodo_idperiodo;";
		
		try {
			rs = conexion.seleccionarDatos(consulta);
			while (rs.next()) {
				deserciones = new Desercion();
				deserciones.setCantidadHombres(rs.getInt(1));
				deserciones.setCantidadMujeres(rs.getInt(2));
				deserciones.setTasa_desercion(rs.getDouble(3));
				deserciones.setCantidadMatriculados(rs.getInt(4));
				deserciones.setPeriodoString(rs.getString(5));
				mostrarInformacion.add(deserciones);
				
			}
			conexion.desconectar();
			return mostrarInformacion;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
			conexion.desconectar();
			return null;
		}
	}
}
