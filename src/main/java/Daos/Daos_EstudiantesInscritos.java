package Daos;
import java.sql.ResultSet;
import java.sql.SQLException;

import Clases.*;
import Conexion.Conexion;

public class Daos_EstudiantesInscritos {
	private Estudiantes_Inscritos estudiantes_Inscritos;
	private Conexion conexion;
	private ResultSet rs;
	
	public Daos_EstudiantesInscritos() {
		estudiantes_Inscritos = new Estudiantes_Inscritos();
		conexion = new Conexion();
	}
	
	public Boolean validarPeriodo(int periodo) throws SQLException {
		String consulta = "select cantidad_aspirantes from estudiantesinscritos where periodo_idperiodo=" + periodo+ ";";
		rs = conexion.seleccionarDatos(consulta);
		System.out.println(consulta);
		while( rs.next() ) {
			estudiantes_Inscritos = new Estudiantes_Inscritos();
			estudiantes_Inscritos.setCantidad_aspirantes(rs.getInt(1));
			System.out.println(estudiantes_Inscritos.getCantidad_aspirantes());
			if (estudiantes_Inscritos.getCantidad_aspirantes()!=0) {
				return false;
			}
		}
		return true;
	}
	
	public boolean agregarEstudiantes(int cantidad_aspirantes, int cantidad_admitidos, int cantidad_matriculados, 
			int cantidad_opcionales, int opcionalaes_matriculados,int total_admitidos,  int nuevosmatriculados, 
			int periodo_idperiodo) {
		String consulta ="insert into estudiantesinscritos (cantidad_aspirantes, cantidad_admitidos, cantidad_matriculados, "
				+ "cantidad_opcionales, opcionalaes_matriculados, total_admitidos, nuevosmatriculados, periodo_idperiodo, caracteristica_id_caracteristica)\r\n"
				+ "values ( " +cantidad_aspirantes + ", " +cantidad_admitidos + "," +cantidad_matriculados+"," 
					+cantidad_opcionales + "," +opcionalaes_matriculados + ", " +total_admitidos+"," +nuevosmatriculados +"," + periodo_idperiodo +", 1  );";
		System.out.println(consulta);
        if (conexion.insertarDatos(consulta)) {
            conexion.desconectar();
            return true;

        } else { 
            conexion.desconectar();
            return false;
        }
	}
}
