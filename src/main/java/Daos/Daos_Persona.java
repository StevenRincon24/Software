package Daos;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Clases.Persona;
import Clases.Rol;
import Clases.Usuario;
import Conexion.Conexion;

public class Daos_Persona {

	private Persona persona;

    private Conexion conexion;
    private ResultSet rs;

    public Daos_Persona() {
        persona = new Persona();
        conexion = new Conexion();
    }

    public boolean agregarPersona(String nombre_Persona, String apellido_Persona, String email_Persona) {
        String Consulta = "insert into persona values (" + null + ", '" + nombre_Persona + "', '" + apellido_Persona + "', '" + email_Persona + "');";
        if (conexion.insertarDatos(Consulta)) {
            conexion.desconectar();
            return true;

        } else { 
            conexion.desconectar();
            return false;
        }
    }
    
    public ArrayList<Persona> mostrarPersonas() {
    	ArrayList<Persona> mostrarPersona = new ArrayList<Persona>();
    	String consulta = "select email_persona, nombre_persona, apellido_persona from persona";
    	
    	try {
			rs = conexion.seleccionarDatos(consulta);
			while (rs.next()) {
				persona = new Persona();
				persona.setEmail_Persona(rs.getString(1));
				persona.setNombre_Persona(rs.getString(2));
				persona.setApellido_Persona(rs.getString(3));
				
				mostrarPersona.add(persona);
			}
			conexion.desconectar();
			return mostrarPersona;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			conexion.desconectar();
			return null;
		}
    }

	public int idPersona(String emailPersona) throws SQLException {
		String consulta = "select id_persona, email_persona from persona where email_persona='"+emailPersona+"';";
		rs = conexion.seleccionarDatos(consulta);
		System.out.println(consulta);
		while (rs.next()) {
			persona = new Persona();
			persona.setId_Persona(rs.getInt(1));
			persona.setEmail_Persona(rs.getString(2));
			if (persona.getEmail_Persona().equals(emailPersona)) {
				System.out.println(persona.getId_Persona());
				return persona.getId_Persona();
			}
		}
		return -1;
	}
}