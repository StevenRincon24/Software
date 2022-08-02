


<%@page import="Daos.Daos_Desercion"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Clases.Deserciones"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%!String Usuario = "";
	String Nombres = "";
	String Rol = "";%>
<%
HttpSession SessionActiva = request.getSession();
if (SessionActiva.getAttribute("Usuario") == null) {
%>
<script type="text/javascript">
	alert("Por Favor Iniciar Sesión");
	location.href = "../index.jsp";
</script>

<%
} else {
Usuario = (String) SessionActiva.getAttribute("Usuario");
}
%>
<head>
<meta charset="UTF-8">
<title>Informes y Estadisticas</title>
<!-- Bootstrap core CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link href="../Estilos/estilos.css" rel="stylesheet">
<link href="../assets/dist/css/bootstrap.rtl.min.css" rel="stylesheet">
</head>

<link
	rel="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
	type="text/css" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"
	type="text/javascript"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.2.2/Chart.min.js"></script>

<script src="https://d3js.org/d3.v4.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/billboard.js/dist/billboard.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/billboard.js/dist/billboard.min.css" />

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>



<style>
body {
	background-color: #FFE700;
	background-image: url('../imagenes/fondo.png');
	background-repeat: no-repeat;
}
.container {
	width: 70%;
	margin: 15px auto;
}
h2 {
	text-align: center;
	font-family: "Verdana", sans-serif;
	font-size: 30px;
}
</style>

<body>

	<jsp:include page="../Menu/MenuAdministrador.jsp" />

	

<div id="cara1">>
			<div class="containerEstadistica">
				<div class="container">
					<h2>Deserciones</h2>
					<div>
						<canvas id="myChart"></canvas>
					</div>
				</div>
			</div>

			<div class="container">
				<div class="col-xs-12 text-center">
					<h2>Perdida Cupo</h2>
				</div>

				<div id="donut-chart"></div>
			</div>


			<div class="containerInforme">
				<div class="row justify-content-center" style="margin-top: 30px">
					<div class="col-6">
						<label for="inputTipo" class="form-label">Concepto</label>
						<textarea class="form-control"
							placeholder="Escriba lo relacionado con el concepto"
							id="TextareaLecturaConcepto" style="height: 200px" readonly>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</textarea>
					</div>
					<div class="col-6">
						<label for="inputTipo" class="form-label">Evidencia</label>
						<textarea class="form-control"
							placeholder="Escriba lo relacionado con la evidencia"
							id="TextareaLecturaEvidencia" style="height: 200px" readonly>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</textarea>
					</div>
				</div>
				<div class="row justify-content-center" style="margin-top: 30px">
					<div class="col-4">
						<label for="inputCalificacion" class="form-label">Calificación</label>
						<div class="input-group mb-3">
							<input type="number" class="form-control" type="number"
								placeholder="4.1" aria-label="Numero"
								aria-describedby="basic-addon1" readonly>
						</div>
					</div>

				</div>
			</div>

			<div class="row justify-content-center" style="margin-top: 10px">
				<div class="col-0">
					<div class="d-grid gap-2 d-md-flex justify-content-md-center">
					<a href="Caracteristica4.pdf" download="Caracteristica4.pdf">
         				<button class="btn btn-warning" type="button">Exportar Archivo</button> 
         			</a> 
					
					
						
						<!-- -->
					</div>
				</div>
			</div>
		
	<%
	
		Daos_Desercion daosDesercion = new Daos_Desercion();
		ArrayList cantidadHombres = daosDesercion.cantidadDesercionesHombres();
		ArrayList cantidadMujeres = daosDesercion.cantidadDesercionesMujeres();
		ArrayList label = daosDesercion.ArregloLabel2();
				
	%>

	<script lang="javascript">
		datosHombres = <%=cantidadHombres%>;
		datosMujeres = <%=cantidadMujeres%>;
		datosTotal = datosHombres.map( (item, ix) => item + datosMujeres[ix] );
		label = <%=label%>
		
		console.log(datosTotal + " Prueba");
		
		ctx = document.getElementById("myChart").getContext("2d");
		label = label;
		 myChart = new Chart(ctx, {
			type : "bar",
			data : {
				labels : label,
				datasets : [ {
					label : "Hombres",
					data : datosHombres,
					backgroundColor : "rgba(1,52,240,94)",
				}, {
					label : "Mujeres",
					data : datosMujeres,
					backgroundColor : "rgba(91,240,103,94)",
				}, {
					label : "Total",
					data : datosTotal,
					backgroundColor : "rgba(240, 226, 58, 94)",
				},
				],
			},
		});
	</script>
	
	<script lang="javascript">
		var chart = bb.generate({
			data : {
				columns : [ [ "Literal B", 9 ], [ "Literal C", 22 ],
						[ "Literal D", 5 ], [ "Literal E", 8 ], ],
				type : "donut",
				onclick : function(d, i) {
					console.log("onclick", d, i);
				},
				onover : function(d, i) {
					console.log("onover", d, i);
				},
				onout : function(d, i) {
					console.log("onout", d, i);
				},
			},
			donut : {
				title : "44",
			},
			bindto : "#donut-chart",
		});
	</script>
	</div>
</body>



<footer>
	<img src="../imagenes/footer.png" width="100%">
</footer>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</html>

