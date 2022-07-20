<%@page import="Daos.Daos_Caracterisitica"%>
<%@page import="Clases.Caracteristica"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<title>Agregar ponderación</title>
</head>
<body>

<%
	Caracteristica claseCaracteristica = new Caracteristica();
	Daos_Caracterisitica daosCaracterisitica = new Daos_Caracterisitica();
	
	
	int ponderacion = Integer.parseInt(request.getParameter("ponderacion"));
	String nivel = request.getParameter("nivelCa");
	double calificacion = Double.parseDouble(request.getParameter("calificacionCa"));
	String gradoCumplimiento = request.getParameter("gradoCumplimientoCa");
	
	if (ponderacion == 1) {
		nivel = "Bajo";
	} else if (ponderacion == 5) {
		nivel = "Medio";
	} else if (ponderacion == 10) {
		nivel = "Alto";
	}
	
	if (calificacion >= 1.0 && calificacion <= 2.9) {
		gradoCumplimiento = "Deficiente";
	} else if (calificacion >= 3.0
			&& calificacion <= 3.9) {
		gradoCumplimiento = "Aceptable";
	} else if (calificacion >= 4.0
			&& calificacion <= 4.7) {
		gradoCumplimiento= "Alto";
	} else if (calificacion >= 4.8
			&& calificacion <= 5.0) {
		gradoCumplimiento = "Pleno";
	}
	
	int idCaracteristica = Integer.parseInt(request.getParameter("idCaracteristicaCa"));
	if(daosCaracterisitica.AgregarPonderacion(idCaracteristica, ponderacion, nivel, calificacion, gradoCumplimiento)==true){
	
%>

<script type="text/javascript">

Swal.fire({
	icon : 'success',
	title : 'Correcto',
	text : 'Se añadió la calificación a la característica',

	showConfirmButton : false,
	timer : 1500,

}).then(function() {
	location.href = "../Listar/InformacionCaracteristicas.jsp";
});

</script>

<%
	}else{
%>
<script lang="javascript">
		Swal.fire({
			icon : 'error',
			title : 'Error!!',
			text : 'Error al agregar la ponderación,

			showConfirmButton : true,

		}).then(function() {
			location.href ="../Administrador/InformacionCaracteristicas.jsp";
		});
	</script>
<%
	}
%>
</body>
</html>