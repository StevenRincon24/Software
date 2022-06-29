<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%!String Usuario = "";
	String Nombres = "";
	String Rol = ""; %>
<%
HttpSession SessionActiva = request.getSession();

if (SessionActiva.getAttribute("Usuario") == null) {
%>
<script type="text/javascript">
	alert("Por Favor Iniciar Sesi�n");
	location.href = "../index.jsp";
</script>

<%
} else {

Usuario = (String) SessionActiva.getAttribute("Usuario");
}
%>
<head>
<meta charset="ISO-8859-1">
<title>Característica</title>
<!-- Bootstrap core CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="../Estilos/estilos.css" rel="stylesheet">
<link href="../assets/dist/css/bootstrap.rtl.min.css" rel="stylesheet">
</head>
<style>
body {
	
	background-image: url('../imagenes/fondo.png');
	background-repeat: no-repeat;
}
</style>
<body onload="cambio()">
	<jsp:include page="../Menu/MenuAdministrador.jsp" />
	<div class="album py-lg-5 ">
		<div class="container">
			<div class="col-xl-12">
				<nav style="-bs-breadcrumb-divider: '&gt;';" aria-label="breadcrumb">
					<ol class="breadcrumb" style="margin-top: 50px">
						<li class="breadcrumb-item"><a
							href="../Administrador/PaginaPrincipal.jsp">Inicio</a></li>
						<li class="breadcrumb-item active" aria-current="page">Característica</li>
					</ol>
				</nav>

				<div class="row justify-content-center">
					<div class="col-4">
						<label for="inputCaracteristica" class="col-form-label">Característica</label>
					
					</div>
					<div class="col-4">
						<select class="form-select" aria-label="Seleccione"
							required="required" id="CaracteristicaSelccionada"
							onchange="cambio()">
							<option selected value="Seleccione">Seleccione</option>
							<option value="PermanenciaDesercion">Permanencia y
								deserción</option>
							<option value="NCalidadEstudiantes">N. Y Calidad de los
								Estudiantes Admitidos</option>
							<option value="FormacionIntegral">P. Actividades de
								Formación Integral</option>
							<option value="ReglamentoEstudiantil">Reglamento
								Estudiantil</option>
						</select>
						<div class="invalid-feedback">¡Debe seleccionar una de las
							opciones!</div>
					</div>
				</div>
<div class="col-12">

							<a><button type="button" class="btn btn-primary"
									disabled="disabled">
									<svg xmlns="http://www.w3.org/2000/svg" width="26" height="26"
										fill="currentColor" class="bi bi-person-plus-fill"
										viewBox="0 0 16 16">
  <path
											d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
  <path fill-rule="evenodd"
											d="M13.5 5a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z" />
</svg>
									Añadir característica
								</button></a> <a><button type="button" class="btn btn-danger">
									<svg xmlns="http://www.w3.org/2000/svg" width="26" height="26"
										fill="currentColor" class="bi bi-person-lines-fill"
										viewBox="0 0 16 16">
  <path
											d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-5 6s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zM11 3.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5zm.5 2.5a.5.5 0 0 0 0 1h4a.5.5 0 0 0 0-1h-4zm2 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2zm0 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2z" />
</svg>
									Ver lista de características
								</button></a>


						</div>
				<form class="needs-validation" novalidate id="caracteristica1"
					method="post"
					action="../Agregar/ProcesarAgregarCaracteristica1.jsp">
					<div class="container">
						<div class="row justify-content-center" style="margin-top: 30px">
							<div class="col-4">
								<label for="inputTipo" class="form-label">Tipo</label>
								<div class="input-group mb-3">
									<select class="form-select" aria-label="Seleccione" required>
										<option selected value="">Seleccione</option>
										<option value="1">Académica</option>
										<option value="2">No académica</option>
									</select>
									<div class="invalid-feedback">¡Debe seleccionar una de
										las opciones!</div>
								</div>
							</div>
							<div class="col-4">
								<label for="inputPeriodo" class="form-label">Periodo</label>
								<div class="input-group mb-3">
									<select class="form-select" aria-label="Seleccione" required>
										<option selected value="">Seleccione</option>
										<option value="Periodo1">I Periodo</option>
										<option value="Periodo2">II Periodo</option>
									</select>
									<div class="invalid-feedback">¡Debe seleccionar un
										periodo!</div>
								</div>
							</div>
							<div class="col-4">
								<label for="inputPeriodo" class="form-label">Cantidad de
									estudiantes</label>
								<div class="input-group mb-3">
									<input type="number" class="form-control" type="number"
										placeholder="Número" aria-label="Numero"
										aria-describedby="basic-addon1" value="" required>
									<div class="invalid-feedback">¡Debe escribir la cantidad
										de estudiantes!</div>
								</div>

							</div>
						</div>
						<div class="row justify-content-center" style="margin-top: 30px">
							<div class="col-4">
								<label for="inputSexo" class="form-label">Sexo</label>


								<div class="form-check">
									<input class="form-check-input" type="radio" value="Masculino"
										id="flexCheckDefault" name="inlineRadioOptions"
										checked="checked"> <label class="form-check-label"
										for="inlineRadio1"> Masculino </label>
								</div>
								<div class="form-check ">
									<input class="form-check-input" type="radio" value="Masculino"
										id="flexCheckDefault" name="inlineRadioOptions"> <label
										class="form-check-label" for="inlineRadio1"> Femenino
									</label>
								</div>
							</div>
							<div class="col-4">
								<label for="inputPeriodo" class="form-label">Número de
									matriculados</label>
								<div class="input-group mb-3">
									<input type="number" class="form-control" type="number"
										placeholder="Número" aria-label="Numero"
										aria-describedby="basic-addon1" value="" required="required">
									<div class="invalid-feedback">¡Debe escribir la cantidad
										de estudiantes matriculados!</div>
								</div>
							</div>
							<div class="col-4">
								<label for="inputAnio" class="form-label">Año</label>
								<div class="input-group mb-3">
									<select class="form-select" aria-label="Seleccione"
										required="required">
										<option selected value="">Seleccione</option>
										<option value="Anio2022">2022</option>
										<option value="Anio2021">2021</option>
										<option value="Anio2020">2020</option>
										<option value="Anio2019">2019</option>
										<option value="Anio2018">2018</option>
										<option value="Anio2017">2017</option>
									</select>
									<div class="invalid-feedback">¡Debe escribir una de las
										opciones!</div>
								</div>

							</div>

						</div>
						<div class="row justify-content-center" style="margin-top: 30px">
							<div class="col-2">
								<nav aria-label="Page navigation">
									<ul class="pagination">
										<li class="page-item"><a class="page-link" href="#"
											aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
										</a></li>
										<li class="page-item active"><a class="page-link"
											onselect="">1</a></li>
										<li class="page-item"><a class="page-link" href="#">2</a></li>
										<li class="page-item"><a class="page-link" href="#"
											aria-label="Next"> <span aria-hidden="true">&raquo;</span>
										</a></li>
									</ul>
								</nav>
							</div>
						</div>



						<div class="row justify-content-center">
							<div class="col-2">
								<button type="submit" class="btn btn-warning"
									style="color: #ffffff">Guardar</button>
							</div>

							<div class="col-1">

								<button type="button" class="btn btn-danger" id="botonCancelar">Cancelar</button>
							</div>

						</div>
					</div>
				</form>


				<form class="needs-validation" novalidate id="caracteristica2"
					action="../Agregar/ProcesarAgregarCaracteristica2.jsp">
					<div class="containerCaracterCalidadPage1">
						<div class="row justify-content-center" style="margin-top: 30px">
							<div class="col-4">
								<label for="inputAnioCalidad" class="form-label">Año</label>
								<div class="input-group mb-3">
									<select class="form-select" aria-label="Seleccione"
										required="required">
										<option selected value="">Seleccione</option>
										<option value="Anio2022">2022</option>
										<option value="Anio2021">2021</option>
										<option value="Anio2020">2020</option>
										<option value="Anio2019">2019</option>
										<option value="Anio2018">2018</option>
										<option value="Anio2017">2017</option>
									</select>
									<div class="invalid-feedback">¡Debe seleccionar una año!</div>
								</div>
							</div>
							<div class="col-4">
								<label for="inputPeriodoCalidad" class="form-label">Periodo</label>
								<div class="input-group mb-3">
									<select class="form-select" aria-label="Seleccione"
										required="required">
										<option selected value="">Seleccione</option>
										<option value="Periodo1">I Periodo</option>
										<option value="Periodo2">II Periodo</option>
									</select>
									<div class="invalid-feedback">¡Debe seleccionar uno de
										los periodos!</div>
								</div>
							</div>
							<div class="col-4">
								<label for="inputInscritosCalidad" class="form-label">Inscritos</label>
								<div class="input-group mb-3">
									<input type="number" class="form-control" type="number"
										placeholder="Número" aria-label="Numero"
										aria-describedby="basic-addon1" value="" required="required">
									<div class="invalid-feedback">¡Debe escribir la cantidad
										de estudiantes inscritos!</div>
								</div>
							</div>
						</div>
						<div class="row justify-content-center" style="margin-top: 30px">
							<div class="col-4">
								<label for="inputAdmitidosCalidad" class="form-label">Admitidos</label>
								<div class="input-group mb-3">
									<input type="number" class="form-control" type="number"
										placeholder="Número" aria-label="Numero"
										aria-describedby="basic-addon1" value="" required="required">
									<div class="invalid-feedback">¡Debe escribir la cantidad
										de estudiantes admitidos!</div>
								</div>
							</div>
							<div class="col-4">
								<label for="inputMatriculadosCalidad" class="form-label">Matriculados</label>
								<div class="input-group mb-3">
									<input type="number" class="form-control" type="number"
										placeholder="Número" aria-label="Numero"
										aria-describedby="basic-addon1" value="" required="required">
									<div class="invalid-feedback">¡Debe escribir la cantidad
										de estudiantes matriculados!</div>
								</div>
							</div>
						</div>

						<div class="row justify-content-center">
							<div class="col-2">
								<button type="submit" class="btn btn-warning"
									style="color: #ffffff">Guardar</button>
							</div>

							<div class="col-1">

								<button type="button" class="btn btn-danger" id="botonCancelar">Cancelar</button>
							</div>

						</div>
					</div>
				</form>



				<form class="needs-validation" novalidate id="caracteristica3"
					action="../Agregar/ProcesarAgregarCaracteristica3.jsp">
					<div class="containerCaracterActividadesPage1">
						<div class="row justify-content-center" style="margin-top: 30px">
							<div class="col-4">
								<label for="inputAccionActividad" class="form-label">Linea
									de Acción</label>
								<div class="input-group mb-3">
									<select class="form-select" aria-label="Seleccione"
										required="required">
										<option selected value="">Seleccione</option>
										<option value="Cultura">Cultura</option>
										<option value="ActividadFisica">Actividad Física</option>
										<option value="Deporte">Deporte</option>
										<option value="ApoyoSocio">Apoyo Socioeconómico</option>
										<option value="Salud">Salud</option>
									</select>
									<div class="invalid-feedback">¡Debe seleccionar uno de
										las lineas de acción!</div>
								</div>
							</div>
							<div class="col-4">
								<label for="inputLineaActividad" class="form-label">Motivo
									línea de acción</label>
								<div class="input-group mb-3">
									<input class="form-control" list="datalistOptions"
										id="exampleDataList" placeholder="Seleccionar" required />
									<datalist id="datalistOptions">
										<option value=""></option>
										<option
											value="Actividad Cultural - Artes Plasticas Y Escenicas"></option>
										<option value="Actividad Cultural - Danza"></option>
										<option value="Actividad Cultural - Música"></option>
										<option value="Actividad Deportiva - Actividad Física"></option>
										<option value="Actividad Deportiva - Deportes"></option>
										<option value="Beca Gobernacion De Boyaca"></option>
										<option value="Beca Hijo Emp. Publico UPTC"></option>
										<option value="Beca Hijo Trab. Publico UPTC"></option>
										<option value="Beca Hijos Func UPTC"></option>
										<option value="Beca Investigacion"></option>
										<option value="Beca Trabajo"></option>
										<option value="Buen Desempeño Cultural"></option>
										<option value="Buen Desempeño Deportivo"></option>
										<option value="Subsisio Restaurante Estudiantil"></option>
										<option value="Funcionario UPTC"></option>
										<option value="Hijo Docente UPTC"></option>
										<option value="Incapacidad Economica"></option>
										<option value="Matricula De Honor"></option>
										<option value="Representante Estudiantil"></option>
										<option value="Laboratorio Clinico"></option>
										<option value="Medicina General"></option>
										<option value="Odontologia"></option>
										<option value="Procedimientos Minimos"></option>
										<option value="Promocion y prevencion"></option>
										<option value="Psicologia"></option>
									</datalist>

									<div class="invalid-feedback">¡Debe seleccionar uno de
										los motivos por lineas de acción!</div>
								</div>
							</div>
							<div class="col-4">
								<label for="inputAnioActividad" class="form-label">Año</label>
								<div class="input-group mb-3">
									<select class="form-select" aria-label="Seleccione"
										required="required">
										<option selected value="">Seleccione</option>
										<option value="Anio2022">2022</option>
										<option value="Anio2021">2021</option>
										<option value="Anio2020">2020</option>
										<option value="Anio2019">2019</option>
										<option value="Anio2018">2018</option>
										<option value="Anio2017">2017</option>
									</select>
									<div class="invalid-feedback">¡Debe seleccionar uno de
										los años!</div>
								</div>
							</div>
						</div>
						<div class="row justify-content-center" style="margin-top: 30px">
							<div class="col-4">
								<label for="inputUsuariosActividad" class="form-label">Usuarios</label>
								<div class="input-group mb-3">
									<input type="number" class="form-control" type="number"
										placeholder="Número" aria-label="Numero"
										aria-describedby="basic-addon1" value="" required="required">
									<div class="invalid-feedback">¡Debe escribir el número de
										usuarios!</div>
								</div>
							</div>
							<div class="col-4">
								<label for="inputServiciosActividad" class="form-label">Servicios</label>
								<div class="input-group mb-3">
									<input type="number" class="form-control" type="number"
										placeholder="Número" aria-label="Numero"
										aria-describedby="basic-addon1" value="" required="required">
									<div class="invalid-feedback">¡Debe escribir el número de
										servicios!</div>
								</div>
							</div>
						</div>

						<div class="row justify-content-center">
							<div class="col-2">
								<button type="submit" class="btn btn-warning"
									style="color: #ffffff">Guardar</button>
							</div>
							<div class="col-1">
								<button type="button" class="btn btn-danger" id="botonCancelar">Cancelar</button>
							</div>
						</div>
					</div>
				</form>


				<form class="needs-validation" novalidate id="caracteristica4"
					action="../Agregar/ProcesarAgregarCaracteristica4.jsp">
					<div class="containerReglamentoPage1">
						<div class="row justify-content-center" style="margin-top: 30px">
							<div class="col-4">
								<label for="inputAnioReglamento" class="form-label">Año</label>
								<div class="input-group mb-3">
									<select class="form-select" aria-label="Seleccione"
										required="required">
										<option selected value="">Seleccione</option>
										<option value="Anio2022">2022</option>
										<option value="Anio2021">2021</option>
										<option value="Anio2020">2020</option>
										<option value="Anio2019">2019</option>
										<option value="Anio2018">2018</option>
										<option value="Anio2017">2017</option>
									</select>
									<div class="invalid-feedback">¡Debe seleccionar uno de
										los años!</div>
								</div>
							</div>
							<div class="col-4">
								<label for="inputPeriodoReglamento" class="form-label">Periodo</label>
								<div class="input-group mb-3">
									<select class="form-select" aria-label="Seleccione"
										required="required">
										<option selected value="">Seleccione</option>
										<option value="Periodo1">I Periodo</option>
										<option value="Periodo2">II Periodo</option>
									</select>
									<div class="invalid-feedback">¡Debe seleccionar uno de
										los periodos!</div>
								</div>
							</div>
							<div class="col-4">
								<label for="inputReintegrosReglamento" class="form-label">Cantidad
									de reintegros</label>
								<div class="input-group mb-3">
									<input type="number" class="form-control" type="number"
										placeholder="Número" aria-label="Numero"
										aria-describedby="basic-addon1" value="" required="required">
									<div class="invalid-feedback">¡Debe escribir el número de
										reintegros!</div>
								</div>
							</div>
						</div>
						<div class="row justify-content-center" style="margin-top: 30px">
							<div class="col-4">
								<label for="inputEgresadosReglamento" class="form-label">Cantidad
									de egresados</label>
								<div class="input-group mb-3">
									<input type="number" class="form-control" type="number"
										placeholder="Número" aria-label="Numero"
										aria-describedby="basic-addon1" value="" required="required">
									<div class="invalid-feedback">¡Debe escribir el número de
										egresados!</div>
								</div>
							</div>
						</div>

						<div class="row justify-content-center">
							<div class="col-2">
								<button type="submit" class="btn btn-warning"
									style="color: #ffffff">Guardar</button>
							</div>

							<div class="col-1">

								<button type="button" class="btn btn-danger" id="botonCancelar">Cancelar</button>
							</div>

						</div>
					</div>
				</form>
			</div>
		</div>
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
	

       
<script src="../js/form-validation.js"></script>
<script src="../js/Caracteristica1.js"></script>
</html>