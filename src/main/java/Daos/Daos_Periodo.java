package Daos;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Clases.*;
import Conexion.Conexion;

public class Daos_Periodo {

	private Periodo periodo;

    private Conexion conexion;
    private ResultSet rs;

    public Daos_Periodo() {
    	periodo = new Periodo();
        conexion = new Conexion();
    }
    
    public ArrayList<Periodo> mostrarPeriodo() {
    	ArrayList<Periodo> mostrarPeriodo = new ArrayList<Periodo>();
    	String consulta = "select * from periodo";
    	
    	try {
			rs = conexion.seleccionarDatos(consulta);
			while (rs.next()) {
				periodo = new Periodo();
				periodo.setId_Periodo(rs.getInt(1));
				periodo.setPeriodo(rs.getString(2));
				
				mostrarPeriodo.add(periodo);
			}
			conexion.desconectar();
			return mostrarPeriodo;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			conexion.desconectar();
			return null;
		}
    }
    
    
    public int cantidadMatriculados(int id_periodo) throws SQLException {
    	
    	System.out.println(id_periodo);
		String consulta = "select idperiodo, cantidad_matriculados from periodo where idperiodo="+id_periodo+";";
		System.out.println(consulta + " cantidad Periodo");
		rs = conexion.seleccionarDatos(consulta);
		System.out.println(consulta);
		while (rs.next()) {
			periodo = new Periodo();
			periodo.setId_Periodo(rs.getInt(1));
			periodo.setCantidad_Matriculados(rs.getInt(2));
			
			
			if (periodo.getId_Periodo() == (id_periodo)) {
				
				return periodo.getCantidad_Matriculados();
			}
		}
		return -1;
	}
    
}
