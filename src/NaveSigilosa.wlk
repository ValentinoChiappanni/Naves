import NaveCombate.*
class NaveSigilosa inherits NaveCombate{
	override method estaTranquila(){
		return super() and not self.estaInvisible()
	}
	override method recibirAmenaza(){
		super()
		self.desplegarMisiles()
		self.ponerseInvisible()
	}
}