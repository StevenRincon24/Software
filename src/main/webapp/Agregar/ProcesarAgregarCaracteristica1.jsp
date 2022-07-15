<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Clases.*"%>
<%@page import="Daos.*"%>
<!DOCTYPE html>
<html>
<head>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<title>Agregar Usuario</title>
</head>
<body>
	<%
	Estudiantes_Inscritos claseEstudiantes_Inscritos= new Estudiantes_Inscritos();
	Daos_EstudiantesInscritos daos_EstudiantesInscritos= new Daos_EstudiantesInscritos();
	
	int periodo = Integer.parseInt(request.getParameter("periodoMecanismos"));
	int aspirantesMecanismos = Integer.parseInt(request.getParameter("aspirantesMecanismos"));
	int admitidosMecanismos = Integer.parseInt(request.getParameter("admitidosMecanismos"));
	int matriculadosMecanismos = Integer.parseInt(request.getParameter("matriculadosMecanismos"));
	int opcionalesMecanismos = Integer.parseInt(request.getParameter("opcionalesMecanismos"));
	int opcionalesMatriculadosMecanismos = Integer.parseInt(request.getParameter("opcionalesMatriculadosMecanismos"));
	int totalAdmitidosMecanismos = Integer.parseInt(request.getParameter("totalAdmitidosMecanismos"));
	int nuevosMatriculadosMecanismos = Integer.parseInt(request.getParameter("nuevosMatriculadosMecanismos"));
	String observaciones = request.getParameter("observacionesMecanismos");
	

	
		
	if(daos_EstudiantesInscritos.validarPeriodo(periodo)==false){
	%>

	<script lang="javascript">
		Swal.fire({
			icon : 'error',
			title : 'Error!!',
			text : 'Ya se insertaron datos para el periodo seleccionado',

			showConfirmButton : true,

		}).then(function() {
			location.href = "../Administrador/Caracteristicas.jsp";
		});
	</script>
	
	<%
	} else if( daos_EstudiantesInscritos.agregarEstudiantes(aspirantesMecanismos, admitidosMecanismos,matriculadosMecanismos,
			opcionalesMecanismos, opcionalesMatriculadosMecanismos,totalAdmitidosMecanismos, nuevosMatriculadosMecanismos, periodo) ){
	%>
	<script lang="javascript">
		Swal.fire({
			icon : 'error',
			title : 'Error!!',
			text : 'Ya se insertaron datos para el periodo seleccionado',

			showConfirmButton : true,

		}).then(function() {
			location.href = "../Administrador/Caracteristicas.jsp";
		});
	</script>
	

	<script lang="javascript">
		Swal.fire({
			icon : 'success',
			title : 'Correcto',
			text : 'Datos registrados con exito',

			showConfirmButton : false,
			timer : 1500,

		}).then(function() {
			location.href = "../Administrador/Caracterisitcas.jsp";
		});
	</script>
	
	<%
	}
	%>


	
</body>
</html>