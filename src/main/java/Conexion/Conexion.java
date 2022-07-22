package Conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Conexion {

	private static final String CONTROLADOR = "com.mysql.cj.jdbc.Driver";
	private static final String URL = "jdbc:mysql://p1c3ml59vxf9syvx:r67masy8vmf4tdoo@bv2rebwf6zzsv341.cbetxkdyhwsb.us-east-1.rds.amazonaws.com:3306/sy99y9b7donmn2sp";
	private static final String USUARIO = "p1c3ml59vxf9syvx";
	private static final String CLAVE = "r67masy8vmf4tdoo";
	private static Statement stmt;
	private static ResultSet rs;
	private static Connection con;

	public Connection conectar() {
		try {
			Class.forName(CONTROLADOR);
			con = DriverManager.getConnection(URL, USUARIO, CLAVE);
			stmt = con.createStatement();
			
		} catch (ClassNotFoundException e) {
			System.out.println("Error al cargar el controlador");
			e.printStackTrace();

		} catch (SQLException e) {
			System.out.println("Error en la conexión");
			e.printStackTrace();
		}

		return con;
	}

	public void desconectar() {
		try {
			stmt.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public ResultSet seleccionarDatos(String consulta) {
		try {
			conectar();
			rs = stmt.executeQuery(consulta);
			return rs;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			return rs;
		}

	}

	public boolean insertarDatos(String consulta) {
		try {

			conectar();
			stmt.execute(consulta);
			return true;

		} catch (SQLException e) {
			System.out.println(e.getMessage());
			return false;
		}
	}

	public boolean insertarDatos2(String consulta, String consulta2) {
		try {

			conectar();
			stmt.execute(consulta);
			stmt.execute(consulta2);
			return true;

		} catch (SQLException e) {
			System.out.println(e.getMessage());
			return false;
		}

	}

	public boolean eliminarDatos(String consulta) {
		try {

			conectar();
			stmt.execute(consulta);
			return true;

		} catch (SQLException e) {
			System.out.println(e.getMessage());
			return false;
		}
	}

	public boolean modificarDatos(String consulta) {
		try {

			conectar();
			stmt.execute(consulta);
			return true;

		} catch (SQLException e) {
			System.out.println(e.getMessage());
			return false;
		}
	}

	public boolean modificarDatos2(String consulta, String consulta2) {
		try {

			conectar();
			stmt.execute(consulta);
			stmt.execute(consulta2);
			return true;

		} catch (SQLException e) {
			System.out.println(e.getMessage());
			return false;
		}
	}

	public boolean insertarDatosCSV(String consulta1, String consulta2, String consulta3, String consulta4) {
		try {

			conectar();
			stmt.execute(consulta1);
			stmt.execute(consulta2);
			rs = stmt.executeQuery(consulta3);

			System.out.println(rs);
			int numero = 0;

			while (rs.next()) {

				numero = rs.getInt(1);

			}
			stmt.execute(consulta4);

			if (numero == 0) {
				return true;
			} else {

				return false;
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			return false;
		}

	}

	
}
