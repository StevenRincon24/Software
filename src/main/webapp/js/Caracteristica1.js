function cambio() {
	var caracteristica = document.getElementById("CaracteristicaSelccionada").value;

	if (caracteristica == "PermanenciaDesercion") {
		document.getElementById("caracteristica1").setAttribute('style', " visibility: visible ");
		document.getElementById("caracteristica2").setAttribute('style', " display: none ");
		document.getElementById("caracteristica3").setAttribute('style', " display: none ");
		document.getElementById("caracteristica4").setAttribute('style', " display: none ");
		
	} else if (caracteristica == "NCalidadEstudiantes") {
		document.getElementById("caracteristica2").setAttribute('style', " visibility: visible ");
		document.getElementById("caracteristica1").setAttribute('style', " display: none ");
		document.getElementById("caracteristica3").setAttribute('style', " display: none ");
		document.getElementById("caracteristica4").setAttribute('style', " display: none ");

	} else if (caracteristica == "FormacionIntegral") {
		document.getElementById("caracteristica3").setAttribute('style', " visibility: visible ");
		document.getElementById("caracteristica1").setAttribute('style', " display: none ");
		document.getElementById("caracteristica2").setAttribute('style', " display: none ");
		document.getElementById("caracteristica4").setAttribute('style', " display: none ");

	}else if (caracteristica == "ReglamentoEstudiantil") {
		document.getElementById("caracteristica4").setAttribute('style', " visibility: visible ");
		document.getElementById("caracteristica1").setAttribute('style', " display: none ");
		document.getElementById("caracteristica3").setAttribute('style', " display: none ");
		document.getElementById("caracteristica2").setAttribute('style', " display: none ");

	}else if (caracteristica = "Seleccione") {

		document.getElementById("caracteristica1").setAttribute('style', " display: none ");
		document.getElementById("caracteristica2").setAttribute('style', " display: none ");
		document.getElementById("caracteristica3").setAttribute('style', " display: none ");
		document.getElementById("caracteristica4").setAttribute('style', " display: none ");
	}

}