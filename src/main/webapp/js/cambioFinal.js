function cambioInforme() {
	var caracteristicaInfo = document.getElementById("caracteristicaInfo").value;
	
	
	if (caracteristicaInfo == "Seleccione") {
		document.getElementById("Informe1").setAttribute('style', " display: none ");
		document.getElementById("Informe2").setAttribute('style', " display: none ");
		document.getElementById("Informe3").setAttribute('style', " display: none ");
		document.getElementById("Informe4").setAttribute('style', " display: none ");
		document.getElementById("Informe5").setAttribute('style', " display: none ");
		document.getElementById("Informe6").setAttribute('style', " display: none ");
		document.getElementById("cara1").setAttribute('style', " display: none ");
		document.getElementById("cara2").setAttribute('style', " display: none ");
		document.getElementById("cara3").setAttribute('style', " display: none ");
		document.getElementById("cara4").setAttribute('style', " display: none ");
		document.getElementById("cara5").setAttribute('style', " display: none ");
		document.getElementById("cara6").setAttribute('style', " display: none ");
	}
	
	if (caracteristicaInfo == 1) {
		document.getElementById("Informe1").setAttribute('style', " visibility: visible ");
		document.getElementById("cara1").setAttribute('style', " visibility: visible ");
		document.getElementById("cara2").setAttribute('style', " display: none ");
		document.getElementById("cara3").setAttribute('style', " display: none ");
		document.getElementById("cara4").setAttribute('style', " display: none ");
		document.getElementById("cara5").setAttribute('style', " display: none ");
		document.getElementById("cara6").setAttribute('style', " display: none ");
		document.getElementById("Informe2").setAttribute('style', " display: none ");
		document.getElementById("Informe3").setAttribute('style', " display: none ");
		document.getElementById("Informe4").setAttribute('style', " display: none ");
		document.getElementById("Informe5").setAttribute('style', " display: none ");
		document.getElementById("Informe6").setAttribute('style', " display: none ");
		
	} else if (caracteristicaInfo == 2) {
		document.getElementById("Informe1").setAttribute('style', " display: none ");
		document.getElementById("cara1").setAttribute('style', " display: none ");
		document.getElementById("Informe2").setAttribute('style', " visibility: visible ");
		document.getElementById("cara2").setAttribute('style', " visibility: visible ");
		document.getElementById("cara3").setAttribute('style', " display: none ");
		document.getElementById("cara4").setAttribute('style', " display: none ");
		document.getElementById("cara5").setAttribute('style', " display: none ");
		document.getElementById("cara6").setAttribute('style', " display: none ");		
		document.getElementById("Informe3").setAttribute('style', " display: none ");
		document.getElementById("Informe4").setAttribute('style', " display: none ");
		document.getElementById("Informe5").setAttribute('style', " display: none ");
		document.getElementById("Informe6").setAttribute('style', " display: none ");
		
	}  else if (caracteristicaInfo == 3) {
		document.getElementById("Informe1").setAttribute('style', " display: none ");
		document.getElementById("cara1").setAttribute('style', " display: none ");
		document.getElementById("Informe2").setAttribute('style', " display: none ");
		document.getElementById("cara2").setAttribute('style', " display: none ");
		document.getElementById("Informe3").setAttribute('style', " visibility: visible ");
		document.getElementById("cara3").setAttribute('style', " visibility: visible ");
		document.getElementById("cara4").setAttribute('style', " display: none ");
		document.getElementById("cara5").setAttribute('style', " display: none ");
		document.getElementById("cara6").setAttribute('style', " display: none ");
		document.getElementById("Informe4").setAttribute('style', " display: none ");
		document.getElementById("Informe5").setAttribute('style', " display: none ");
		document.getElementById("Informe6").setAttribute('style', " display: none ");
		
	} else if (caracteristicaInfo == 4) {
		document.getElementById("Informe1").setAttribute('style', " display: none ");
		document.getElementById("cara1").setAttribute('style', " display: none ");
		document.getElementById("Informe2").setAttribute('style', " display: none ");
		document.getElementById("cara2").setAttribute('style', " display: none ");
		document.getElementById("Informe3").setAttribute('style', " display: none ");
		document.getElementById("cara3").setAttribute('style', " display: none ");
		document.getElementById("cara4").setAttribute('style', " visibility: visible ");
		document.getElementById("cara5").setAttribute('style', " display: none ");
		document.getElementById("cara6").setAttribute('style', " display: none ");
		document.getElementById("Informe4").setAttribute('style', " visibility: visible ");
		document.getElementById("Informe5").setAttribute('style', " display: none ");
		document.getElementById("Informe6").setAttribute('style', " display: none ");
		
	} else if (caracteristicaInfo == 5) {
		document.getElementById("Informe1").setAttribute('style', " display: none ");
		document.getElementById("Informe2").setAttribute('style', " display: none ");
		document.getElementById("Informe3").setAttribute('style', " display: none ");
		document.getElementById("Informe4").setAttribute('style', " display: none ");
		document.getElementById("Informe5").setAttribute('style', " visibility: visible ");
		document.getElementById("Informe6").setAttribute('style', " display: none ");
		document.getElementById("cara1").setAttribute('style', " display: none ");
		document.getElementById("cara2").setAttribute('style', " display: none ");
		document.getElementById("cara3").setAttribute('style', " display: none ");
		document.getElementById("cara4").setAttribute('style', " display: none ");
		document.getElementById("cara5").setAttribute('style', " visibility: visible ");
		document.getElementById("cara6").setAttribute('style', " display: none ");
		
	} else if (caracteristicaInfo == 6) {
		document.getElementById("Informe1").setAttribute('style', " display: none ");
		document.getElementById("Informe2").setAttribute('style', " display: none ");
		document.getElementById("Informe3").setAttribute('style', " display: none ");
		document.getElementById("Informe4").setAttribute('style', " display: none ");
		document.getElementById("Informe5").setAttribute('style', " display: none ");
		document.getElementById("Informe6").setAttribute('style', " visibility: visible ");
		document.getElementById("cara1").setAttribute('style', " display: none ");
		document.getElementById("cara2").setAttribute('style', " display: none ");
		document.getElementById("cara3").setAttribute('style', " display: none ");
		document.getElementById("cara4").setAttribute('style', " display: none ");
		document.getElementById("cara5").setAttribute('style', " display: none ");
		document.getElementById("cara6").setAttribute('style', " visibility: visible ");
	}
	
}