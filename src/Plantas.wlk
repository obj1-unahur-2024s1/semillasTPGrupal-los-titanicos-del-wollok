class Plantas{ 
	const anioDeObtencionSemilla
	var altura
	
	method horasDeSol()
	method esFuerte()
	method daNuevaSemilla()
	method espacioQueOcupa()
}
class Mentas inherits Plantas{
	
	method altura()= altura
	override method horasDeSol()= 6
	override method daNuevaSemilla()= if (self.altura()>0.4) true else false
	override method espacioQueOcupa()=self.altura()*3
	override method esFuerte(){} 
}

