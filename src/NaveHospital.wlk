import NavePasajero.*
class NaveHospital inherits NavePasajeros{
	var property hayQuirofonaPreparado = false
	override method estaTranquila(){
		return not hayQuirofonaPreparado
	}
	override method recibirAmenaza(){
		super()
		hayQuirofonaPreparado = true
	}
}