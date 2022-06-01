import Naves.*
class NavePasajeros inherits NaveEspacial{
	var property pasajeros = 0
	var racionComida = 0
	var racionBebida = 0
	var reacionesDeComidaServida = 0
	method cargar(comida,bebida){
		racionComida = comida
		racionBebida = bebida
	}
	method descargar(comida,bebida){
		racionComida = 0.max(racionComida-comida)
		racionBebida = 0.max(racionBebida-bebida)
		reacionesDeComidaServida += comida
	}
	override method prepararViaje(){
		super()
		self.cargar(4*pasajeros,6*pasajeros)
		self.acercarseUnPocoAlSol()
	}
	override method escapar(){
		self.acelerar(self.velocidad()*2) 
	}
	override method avisar(){
		self.descargar(pasajeros,2*pasajeros)
	}
	override method pocaActividad(){
		return reacionesDeComidaServida >= 50
	}
}