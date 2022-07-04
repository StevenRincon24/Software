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
	Usuario claseUsuario = new Usuario();
	Persona clasePersona = new Persona();
	Daos_Usuario daosUsuario = new Daos_Usuario();
	Daos_Persona daosPersona = new Daos_Persona();
	
	String nombre = request.getParameter("firstName");
	String apellido = request.getParameter("lastName");
	String correo = request.getParameter("email");
	
	String usuario = request.getParameter("username");
	String password = request.getParameter("password");
	int rol = Integer.parseInt(request.getParameter("rol"));
	
		
	if(daosPersona.validarEmail(correo)){
	%>

	<script lang="javascript">
		Swal.fire({
			icon : 'error',
			title : 'Error!!',
			text : 'El correo ya existe',

			showConfirmButton : true,

		}).then(function() {
			location.href = "../Administrador/CrearUsuario.jsp";
		});
	</script>
	
	<%
	} if(daosUsuario.validarUsuario(usuario)) {
	%>

	<script lang="javascript">
		Swal.fire({
			icon : 'error',
			title : 'Error!!',
			text : 'El nombre de usuario o correo ya existen',

			showConfirmButton : true,

		}).then(function() {
			location.href = "../Administrador/CrearPersona.jsp";
		});
	</script>
	
	<%
	}else if(daosPersona.agregarPersona(nombre, apellido, correo) ){
	%>

	<script lang="javascript">
		Swal.fire({
			icon : 'success',
			title : 'Correcto',
			text : 'Persona y usuario añadido',

			showConfirmButton : false,
			timer : 1500,

		}).then(function() {
			location.href = "../Administrador/CrearUsuario.jsp";
		});
	</script>
	
	<%
		int id_Persona = daosPersona.idPersona(correo);
		daosUsuario.agregarUsuario(usuario, password, rol, id_Persona);	
	}
	%>


	
</body>
</html>