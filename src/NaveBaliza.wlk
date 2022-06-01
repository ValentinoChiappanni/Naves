import Naves.*
class NaveBaliza inherits NaveEspacial{
	var colorBalizaActual = "Verde" 
	const cambiosDeColores = []
	const coloresDisponibles = ["Verde","Rojo","Azul"]
	method cambiarColorDeBaliza(colorNuevo){
		if (coloresDisponibles.contains(colorNuevo)){
			colorBalizaActual = colorNuevo
			cambiosDeColores.add(colorNuevo)
		}else{
			self.error("El color: " + colorNuevo +" no esta disponible")
		}
	}
	override method prepararViaje(){
		super()
		self.cambiarColorDeBaliza("Verde")
		self.ponerseParaleloAlSol()
	}
	override method estaTranquila(){
		return super() and colorBalizaActual != "Rojo"
	}
	override method escapar(){
		self.irHaciaElSol()
	}
	override method avisar(){
		self.cambiarColorDeBaliza("Rojo")
	}
	override method pocaActividad(){
		return cambiosDeColores.isEmpty()
	}
}