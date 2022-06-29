<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Clases.Usuario"%>
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
	Daos_Usuario daosUsuario = new Daos_Usuario();
	Daos_Persona daosPersona = new Daos_Persona();

	String usuario = request.getParameter("username");
	String password = request.getParameter("password");
	int rol = Integer.parseInt(request.getParameter("rol"));
	
	int persona = daosPersona.idPersona((request.getParameter("persona")));

	if (daosUsuario.validarUsuario(usuario)) {
	%>

	<script lang="javascript">
		Swal.fire({
			icon : 'error',
			title : 'Error!!',
			text : 'El usuario ya existe',

			showConfirmButton : true,
			

		}).then(function() {
			location.href = "../Administrador/CrearUsuario.jsp";
		});
	</script>

	<%
	} else if (daosUsuario.agregarUsuario(usuario, password, rol, persona)) {
	%>

	<script lang="javascript">
		Swal.fire({
			icon : 'success',
			title : 'Correcto',
			text: 'Usuario añadido',

			showConfirmButton : false,
			timer : 1500,

		}).then(function() {
			location.href = "../Administrador/CrearUsuario.jsp";
		});
	</script>
	<%
	}
	%>
</body>
</html>