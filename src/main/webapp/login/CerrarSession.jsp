<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>


<%
HttpSession SessionActiva = request.getSession();

SessionActiva.invalidate();
%>


<html>
<head>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<meta charset="ISO-8859-1">
<title>Cerrar sesion</title>
</head>
<body>
	<script type="text/javascript">
	let timerInterval
	Swal.fire({
	  title: 'Cerrando sesión!',
	  html: 'Redireccionando al inicio.',
	  timer: 1500,
	  timerProgressBar: true,
	  didOpen: () => {
	    Swal.showLoading()
	    const b = Swal.getHtmlContainer().querySelector('b')
	    timerInterval = setInterval(() => {
	      b.textContent = Swal.getTimerLeft()
	    }, 100)
	  },
	  willClose: () => {
	    clearInterval(timerInterval)
	  }
	}).then(function() {
		location.href = "../index.jsp";
	});	
	</script>

</body>
</html>
