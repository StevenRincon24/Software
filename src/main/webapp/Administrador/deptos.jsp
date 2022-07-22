
<%@page import="Clases.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Daos.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
            rel="stylesheet">
        <link href="../Estilos/estilos.css" rel="stylesheet">
        <link href="../assets/dist/css/bootstrap.rtl.min.css" rel="stylesheet">
    </head>
    <body>
        <script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>

        <script type="text/javascript">
            //Se muestra el Id_Departamento para que despliegue las cuidades  //
            function comboDepto() {


                $.post("ComboMotivoLineaAccion.jsp", $("#caracteristica3").serialize(), function (data) {
                    $("#idCiudad").html(data);
                });


            }
        </script>
        <form action="" method="POST" id="caracteristica3">
            <%
                Linea_Accion lineaAccion = new Linea_Accion();
                DaosLineasAccion daosLineasAccion = new DaosLineasAccion();
                ArrayList ListarLinea = new ArrayList();
                ListarLinea =daosLineasAccion.mostrarLineasAccion();
                int id;
             
                
            %>


            <select name="depto" onchange="comboDepto()"  class="form-select">
                <option value="">-Seleccione Depto-</option>    
                <%
                    // se crea el for para que recorra los departametos //
                for (Object listar1 : ListarLinea) {
                    // se llama la clase departamento y la lista  //
                       lineaAccion = (Linea_Accion) listar1;
                       // se llama los atributos de la clase que se quieren mostrar  //
                       id=lineaAccion.getIdLineaAccion() ;
                      %>
                <option value="<%=id%>"><%=lineaAccion.getNombreLineaAccion()%> </option>  

                <%}  %>
            </select>
            
           
            <select name="ciudades" id="idCiudad">
                <option value=""> --Seleccione-</option>


            </select>

        </form>
    </body>
</html>
