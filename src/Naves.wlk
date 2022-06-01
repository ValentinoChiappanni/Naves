class NaveEspacial{
	var velocidad = 0
	var direccionRespectoDelSol = 0
	var combustible = 0
	method acelerar(unaVelocidad){
		velocidad = 100000.min(velocidad+unaVelocidad)
	}
	method velocidad(){
		return velocidad
	}
	method desacelerar(unaVelocidad){
		velocidad = 0.max(velocidad-unaVelocidad)
	}
	method irHaciaElSol(){
		direccionRespectoDelSol = 10
	}
	method escaparDelSol(){
		direccionRespectoDelSol = -10
	}
	method ponerseParaleloAlSol(){
		direccionRespectoDelSol=0
	}
	method acercarseUnPocoAlSol(){
		direccionRespectoDelSol = 10.min(direccionRespectoDelSol+1)
	}
	method alejarseUnPocoDelSol(){
		direccionRespectoDelSol = -10.max(direccionRespectoDelSol-1)
	}	
	method cargarCombustible(unaCantidad){
		combustible =  unaCantidad
	}
	method descargarCombustible(unaCantidad){
		combustible = 0.max(unaCantidad)
	}
	method combustible(){
		return combustible
	}
	method prepararViaje(){
		self.cargarCombustible(30000)
		self.acelerar(5000)
	}
	method estaTranquila(){
		return combustible >= 4000 and velocidad < 12000
	}
	method recibirAmenaza(){
		self.escapar()
		self.avisar()
	}
	method escapar()
	method avisar()
	method estaDeRelajo(){
		return self.estaTranquila() and self.pocaActividad()
	}
	method pocaActividad()
}