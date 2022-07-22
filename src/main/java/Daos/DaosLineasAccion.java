package Daos;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import Clases.*;
import Conexion.Conexion;

public class DaosLineasAccion {
	private Linea_Accion linea_Accion;
	private Conexion conexion;
	private ResultSet rs;
	
	public DaosLineasAccion() {
		linea_Accion = new Linea_Accion();
		conexion = new Conexion();
	}
	
	public ArrayList<Linea_Accion> mostrarLineasAccion(){
		ArrayList<Linea_Accion> mostrarLineasAccion1 = new ArrayList<>();
		String consulta ="select * from lineaAccion;";
		try {
			rs = conexion.seleccionarDatos(consulta);
			while (rs.next()) {
				linea_Accion = new Linea_Accion();
				linea_Accion.setIdLineaAccion(rs.getInt(1));
				linea_Accion.setNombreLineaAccion(rs.getString(2));
				mostrarLineasAccion1.add(linea_Accion);
			}
			conexion.desconectar();
			return mostrarLineasAccion1;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			conexion.desconectar();
			return null;
		}
	}
}
