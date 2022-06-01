import Naves.*
class NaveCombate inherits NaveEspacial{
	var estaInvisible = true
	var estanDesplegadosLosMisiles = true
	const property mensajesEmitidos = []
	method ponerseVisible(){
		estaInvisible = false
	}
	method ponerseInvisible(){
		estaInvisible = true
	}
	method estaInvisible(){
		return estaInvisible
	}
	method desplegarMisiles(){
		estanDesplegadosLosMisiles = true
	}
	method replegarMisiles(){
		estanDesplegadosLosMisiles = false
	}
	method misilesDesplegados(){
		return estanDesplegadosLosMisiles
	}
	method emitirMensaje(mensaje){
		mensajesEmitidos.add(mensaje)
	}
	method primerMensajeEmitido(){
		if (mensajesEmitidos.isEmpty()){
			self.error("No hay ningun mensaje emitido!")
		}else{
			mensajesEmitidos.first()
		}
	}
	method ultimoMensajeEmitido(){
		if (mensajesEmitidos.isEmpty()){
			self.error("No hay ningun mensaje emitido!")
		}else{
			mensajesEmitidos.last()
		}
	}
	method esEscueta(){
		return mensajesEmitidos.all({m=>m.size()<=30})
	}
	method emitioMensaje(mensaje){
		return mensajesEmitidos.contains(mensaje)
	}
	override method prepararViaje(){
		super()
		self.ponerseVisible()
		self.replegarMisiles()
		self.acelerar(15000)
		self.emitirMensaje("Saliendo en misión")
	}
	override method estaTranquila(){
		return super() and not self.misilesDesplegados()
	}
	override method escapar(){
		self.acercarseUnPocoAlSol()
		self.acercarseUnPocoAlSol()
	}
	override method avisar(){
		self.emitirMensaje("Amenaza recibida")
	}
	override method pocaActividad(){
		return self.esEscueta()
	}
}