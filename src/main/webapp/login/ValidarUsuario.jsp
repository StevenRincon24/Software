<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Clases.Usuario"%>
<%@page import="Daos.Daos_Usuario"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

</head>
<body>
	<%
	Usuario usuario = new Usuario();
	Daos_Usuario daosUsuario = new Daos_Usuario();
	String usuarioFormulario = request.getParameter("usuario");
	String contrasenhia = request.getParameter("contrasenhia");

	int RolUsuario = daosUsuario.rolUsuario(usuarioFormulario, contrasenhia);
	String Nombres = daosUsuario.nombre_Usuario(usuarioFormulario);

	if (RolUsuario == 1) {
		HttpSession SesionActiva = request.getSession();
		SesionActiva.setAttribute("Usuario", usuarioFormulario);
	%>

	<script lang="javascript">
	
	Swal.fire({
		 icon: 'success',
		  title: 'Datos correctos',
		  text: 'Bienvenido <%=Nombres%>',
		  
		showConfirmButton : false,
		timer : 1500,

	}).then(function() {
		location.href = "../Administrador/PaginaPrincipal.jsp";
	});
	<%-- Swal.fire({
		  icon: 'success',
		  title: 'Datos correctos',
		  text: 'Bienvenido <%=Nombres%>',
		 
		}).then(function() {
			location.href = "../Administrador/PaginaPrincipal.jsp";
		});--%>
	
        </script>

	<%
	} else if (RolUsuario == 2) {
	HttpSession SesionActiva = request.getSession();
	SesionActiva.setAttribute("Usuario", usuarioFormulario);
	%>

	<script languaje="javascript">
	Swal.fire({
		  icon: 'success',
		  title: 'Datos correctos',
		  text: 'Bienvenido <%=Nombres%>',
		 
		}).then(function() {
			location.href = "../Profesor/PaginaPrincipal.jsp";
		});
	</script>

	<%
	} else {
	%>

	<script lang="javascript">
	
		Swal.fire({
			icon : 'error',
			title : '¡Error al iniciar sesión!',
			text : 'Por favor verifique los datos ingresados',

		}).then(function() {
			location.href = "../index.jsp";
		});
	</script>

	<%
	}
	%>
</body>
</html>
