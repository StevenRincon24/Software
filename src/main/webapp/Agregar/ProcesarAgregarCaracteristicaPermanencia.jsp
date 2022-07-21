<%@page import="Daos.Daos_Desercion"%>
<%@page import="Clases.Desercion"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<title>Agregar desercion</title>
</head>
<body>
	<%
	Desercion claseDesercion = new Desercion();
	Daos_Desercion daos_Desercion = new Daos_Desercion();

	int cantidad_Hombres = Integer.parseInt(request.getParameter("cantidadHombres"));
	int cantidad_Mujeres = Integer.parseInt(request.getParameter("cantidadMujeres"));
	double tasa_desercion = Double.parseDouble(request.getParameter("tasadesercion"));
	int periodo = Integer.parseInt(request.getParameter("periodo"));
	System.out.println((daos_Desercion.validarPeriodo(periodo)) + " prueba");
	if (daos_Desercion.validarPeriodo(periodo)==false) {
	%>
	<script lang="javascript">
		Swal.fire({
			icon : 'error',
			title : 'Error!!',
			text : 'Ya se agregó información para el periodo seleccionado',

			showConfirmButton : true,

		}).then(function() {
			location.href ="../Administrador/Caracteristicas.jsp";
		});
	</script>
	<%
	}

	else if (daos_Desercion.agregarDesercion(cantidad_Hombres, cantidad_Mujeres, tasa_desercion, periodo)) {
	%>


	<script type="text/javascript">

	Swal.fire({
	icon : 'success',
	title : 'Correcto',
	text : 'Se añadió la calificación a la característica',

	showConfirmButton : false,
	timer : 1500,

}).then(function() {
	location.href = "../Administrador/Caracteristicas.jsp";
});

</script>

	<%
	} 
	%>
	
</body>
</html>