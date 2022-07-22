package Daos;

import Clases.Clase_Ciudad;
import Conexion.Conexion;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import Clases.Clase_Departamento;
import static java.lang.System.out;
import java.sql.PreparedStatement;

public class Ciudades {

    private Clase_Ciudad Clase_Ciudad;
    private Conexion Conexion;
    private ResultSet rs;

    public Ciudades() {

        Clase_Ciudad = new Clase_Ciudad();
        Conexion = new Conexion();

    }

    public boolean AlmacenarCiudades(int codigo, int Id_departamento, String Nombre) {

        String Consulta = "insert into ciudad values("+ codigo+ ","+Id_departamento+",'" + Nombre +"');";
        System.out.println(Consulta);

        if (Conexion.insertarDatos(Consulta)) {
            Conexion.desconectar();

            return true;
        } else {
            Conexion.desconectar();
            return false;
        }

    }

    public ArrayList ListarCiudades(int Id_Departamento) {

        ArrayList ListarCiudades = new ArrayList();

        String Consulta = "select * from ciudad where Id_Departamento=" + Id_Departamento + ";";

        try {

            rs = Conexion.seleccionarDatos(Consulta);

            while (rs.next()) {

                Clase_Ciudad = new Clase_Ciudad();
               
                Clase_Ciudad.setCodigo(rs.getInt(1));
                Clase_Ciudad.setNombre(rs.getString(2));
                Clase_Ciudad.setId_departamento(rs.getInt(3));
                ListarCiudades.add(Clase_Ciudad);

            }
            Conexion.desconectar();
            
            return ListarCiudades;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            Conexion.desconectar();
            return null;
        }
    }

    public boolean BuscarCiudades(String Nombre) {

        ResultSet rs;
        String consulta = "SELECT Nombre FROM ciudad where Nombre=" + Nombre + ";";
        System.out.println(consulta);
        rs = Conexion.seleccionarDatos(consulta);
        Conexion.conectar();
        try {
            rs = Conexion.seleccionarDatos(consulta);
            while (rs.next()) {
                
                Clase_Ciudad = new Clase_Ciudad();
                Clase_Ciudad.setNombre(rs.getString(1));

                if (Clase_Ciudad.getNombre().equals(Nombre)) {

                    return true;

                }

            }

            Conexion.desconectar();
            return false;

        } catch (SQLException e) {
            System.err.println(e.getMessage());
            Conexion.desconectar();
            return false;
        }
    }

    public ArrayList ListarCiudadUnica(String Nombre) {

        ArrayList ListarCiudades = new ArrayList();

        String Consulta = "select * from ciudad where Nombre=" + Nombre + "";

        System.out.println(Consulta);

        try {

            rs = Conexion.seleccionarDatos(Consulta);

            while (rs.next()) {

                Clase_Ciudad = new Clase_Ciudad();
              Clase_Ciudad.setCodigo(rs.getInt(1));
                Clase_Ciudad.setNombre(rs.getString(2));
                Clase_Ciudad.setId_departamento(rs.getInt(3));
                

                ListarCiudades.add(Clase_Ciudad);

            }
            Conexion.desconectar();
            return ListarCiudades;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            Conexion.desconectar();
            return null;
        }
    }

    public ArrayList ListarBuscarCiudadUnica(String Nombre) {

        ArrayList ListarCiudades = new ArrayList();

        String Consulta = "select * from ciudad where Nombre=" + Nombre + "";

        System.out.println(Consulta);

        try {

            rs = Conexion.seleccionarDatos(Consulta);

            while (rs.next()) {

                Clase_Ciudad = new Clase_Ciudad();

               Clase_Ciudad.setCodigo(rs.getInt(1));
                Clase_Ciudad.setNombre(rs.getString(2));
                Clase_Ciudad.setId_departamento(rs.getInt(3));

                ListarCiudades.add(Clase_Ciudad);

            }
            Conexion.desconectar();
            return ListarCiudades;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            Conexion.desconectar();
            return null;
        }
    }

}
