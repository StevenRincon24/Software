package Daos;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import Clases.*;
import Conexion.Conexion;

public class Daos_motivoLineaAccion {
	private MotivoLineaAccion motivoLineaAccion;
	private Conexion conexion;
	private ResultSet rs;
	
	public Daos_motivoLineaAccion() {
		motivoLineaAccion = new MotivoLineaAccion();
		conexion = new Conexion();
	}
	
	public ArrayList<MotivoLineaAccion> listaMotivos(int idLineaAccion){
		ArrayList<MotivoLineaAccion> lista = new ArrayList<MotivoLineaAccion>();
		String consulta = "select * from motivoLineaAccion where idLineaAccion="+ idLineaAccion+";";
                System.out.println("consulta " +consulta);
		try {
			rs = conexion.seleccionarDatos(consulta);
			while (rs.next()) {
				motivoLineaAccion = new MotivoLineaAccion();
				motivoLineaAccion.setIdMotivoLineaAccion(rs.getInt(1));
				motivoLineaAccion.setNombreLineaAccion(rs.getString(2));
				motivoLineaAccion.setIdLineaAccion(rs.getInt(3));
				lista.add(motivoLineaAccion);
			}
			conexion.desconectar();
			return lista;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			conexion.desconectar();
			return null;
		}
	}
}
