object olivia {
	var concentracion = 6
	
	method concentracion() = concentracion
	
	method recibirMasajes() {
		concentracion += 3
	}
	method discutir() {
		concentracion -= 1
	}
	method banioDeVapor(){}
}

object bruno {
	var esFeliz = true
	var tieneSed = false
	var peso = 55000
	
	method recibirMasajes() {
		esFeliz = true
	}
	method banioDeVapor() {
		peso -= 500
		tieneSed = true
	}
	method tomarAgua() {
		tieneSed = false
	}
	method comerFideos() {
		peso += 250
		tieneSed = true
	}
	method correr() {
		peso -= 300
	}
	method veNoticiero() {
		esFeliz = false
	}
	
	method estaPerfecto() = esFeliz and (not tieneSed) and peso.between(50000, 70000)
	method mediodiaEnCasa() {
		self.comerFideos()
		self.tomarAgua()
		self.veNoticiero()
	}
}

object ramiro {
	var contracturado = 0
	var tienePielGrasa = true
	
	method recibirMasajes() {
		contracturado = 0.max(contracturado - 2)
	}
	method banioDeVapor() {
		tienePielGrasa = false
	}
	method comerBigMac() { 
		tienePielGrasa = true
	}
	method bajarALaFosa() {
		tienePielGrasa = true
		contracturado += 1
	}
	method jugarPaddle() {
		contracturado += 3
	}
	method diaDeTrabajo() {
		self.bajarALaFosa()
		self.comerBigMac()
		self.bajarALaFosa()
	}
}