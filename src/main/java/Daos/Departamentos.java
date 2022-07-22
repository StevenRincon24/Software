package Daos;

import Clases.Clase_Departamento;
import Conexion.Conexion;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Departamentos {

    private Clase_Departamento Clase_Departamento;
    private Conexion Conexion;
    private ResultSet rs;

    public Departamentos() {

        Clase_Departamento = new Clase_Departamento();
        Conexion = new Conexion();

    }

    public boolean AlmacenarDepartamentos(int Id_Departamento, String Nombre) {

        String Consulta = "insert into departamento values(" + Id_Departamento + ",'" + Id_Departamento+ "');";
        System.out.println(Consulta);

        if (Conexion.insertarDatos(Consulta)) {
            Conexion.desconectar();

            return true;
        } else {
            Conexion.desconectar();
            return false;
        }

    }


    public ArrayList ListarDepartamentos() {

        ArrayList ListarDepartamentos = new ArrayList();

        String Consulta = "select * from departamento";
        System.out.println(Consulta);

        try {

            rs = Conexion.seleccionarDatos(Consulta);

            while (rs.next()) {
                Clase_Departamento = new Clase_Departamento();

                Clase_Departamento.setId_Departamento(rs.getInt(1));
                Clase_Departamento.setNombre(rs.getString(2));

                ListarDepartamentos.add(Clase_Departamento);

            }
            Conexion.desconectar();
            return ListarDepartamentos;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            Conexion.desconectar();
            return null;
        }
    }

   
 
    public boolean BuscarDepartamentos(String Nombre) {

        ResultSet rs;
        String consulta = "SELECT nombre FROM departamento where Nombre='" + Nombre+ "';";
        System.out.println(consulta);
        rs = Conexion.seleccionarDatos(consulta);
        Conexion.conectar();
        try {
            rs = Conexion.seleccionarDatos(consulta);
            while (rs.next()) {
                Clase_Departamento = new Clase_Departamento();

                Clase_Departamento.setNombre(rs.getString(1));

                if (Clase_Departamento.getNombre().equals(Nombre)) {

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

    public ArrayList ListarDepartamentoUnico(int Id_Departamento) {

        ArrayList ListarDepartamentos = new ArrayList();

        String Consulta = "select * from departamento where Id_Departamento=" + Id_Departamento + "";

        System.out.println(Consulta);

        try {

            rs = Conexion.seleccionarDatos(Consulta);

            while (rs.next()) {

                Clase_Departamento = new Clase_Departamento();

                Clase_Departamento.setId_Departamento(rs.getInt(1));
                Clase_Departamento.setNombre(rs.getString(2));

                ListarDepartamentos.add(Clase_Departamento);

            }
            Conexion.desconectar();
            return ListarDepartamentos;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            Conexion.desconectar();
            return null;
        }
    }

    public ArrayList ListarBuscarDepartamentoUnico(String Nombre) {

        ArrayList ListarDepartamentos = new ArrayList();

        String Consulta = "select * from departamento where Nombre='" + Nombre + "'";

        System.out.println(Consulta);

        try {

            rs = Conexion.seleccionarDatos(Consulta);

            while (rs.next()) {

                Clase_Departamento = new Clase_Departamento();

                Clase_Departamento.setId_Departamento(rs.getInt(1));
                Clase_Departamento.setNombre(rs.getString(2));

                ListarDepartamentos.add(Clase_Departamento);

            }
            Conexion.desconectar();
            return ListarDepartamentos;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            Conexion.desconectar();
            return null;
        }
    }

   

    }

