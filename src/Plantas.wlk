class Planta{ 
	const anioDeObtencionSemilla
	var altura
	//var horasDeSol

	method altura()= altura		//devuelve un numero
	method horasDeSol()	  //numero	

	method esFuerte()= self.horasDeSol()>10      //devuelve un booleano
//se tiene que cumplir que la planta sea fuerte o bien una condición alternativa, que define cada especie.
	method daNuevaSemilla() = self.esFuerte() or self.condicionAlternativa()
	method condicionAlternativa() //metodo abstracto
	//devuelve un booleano
	method espacioQueOcupa()  //tipo numero  //mtdo abst
	//method condicionIdeal(unaParcela)

	method condicionIdeal(unaParcela)
}
class Menta inherits Planta {
	
	
	override method horasDeSol()= 6
	override method condicionAlternativa()= altura >0.4
	override method espacioQueOcupa()=altura*3
	override method condicionIdeal(unaParcela)=
		unaParcela.superficieParcela()> 6
	
}
class HiebaBuena inherits Menta {
	override method espacioQueOcupa()= super()*2
}

class Soja inherits Planta {
	
	override method horasDeSol()= if( self.altura()<0.5) 6 else if(self.altura().between(0.5, 1)) 7 else 9
	override method condicionAlternativa()=anioDeObtencionSemilla >2007 and altura>1
	override  method daNuevaSemilla()= self.altura()> 1 and anioDeObtencionSemilla>2007 
	override  method espacioQueOcupa()= altura/2
	override method condicionIdeal(unaParcela)= self.horasDeSol()== unaParcela.horasDeSol()
}
 class SojaTransgenica inherits Soja{
 	override  method daNuevaSemilla()=false
 	override method condicionIdeal(unaParcela)= unaParcela.plantas().size()<=1
 }
 class Quinoa inherits Planta{
 	var horasDeSol
 	
 	method horasDeSol_(horas){horasDeSol= horas} //se configura para cada planta
 	override method horasDeSol()=horasDeSol
 	override  method espacioQueOcupa()=0.5
 	override  method condicionAlternativa()=anioDeObtencionSemilla<2005
 	override method condicionIdeal(unaParcela)= unaParcela.plantas().any{p=> p.altura()>1.5}
 	
 	
 }
