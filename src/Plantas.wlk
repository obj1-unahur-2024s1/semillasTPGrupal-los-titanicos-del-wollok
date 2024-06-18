class Planta{ 
	const anioDeObtencionSemilla
	var altura

	method altura()= altura		//devuelve un numero
	method horasDeSol()	   //numero	

	method esFuerte()= self.horasDeSol()>10      //devuelve un booleano
//i da nuevas semillas, para lo cual se tiene que cumplir que la planta sea fuerte o bien una condición alternativa, que define cada especie.
	method daNuevaSemilla() = self.esFuerte() or self.condicionAlternativa()
	method condicionAlternativa() //metodo abstracto
	//devuelve un booleano
	method espacioQueOcupa()  //tipo numero  //mtdo abst
	//method condicionIdeal(unaParcela)
}
class Menta inherits Planta {
	
	
	override method horasDeSol()= 6
	override method condicionAlternativa()= altura >0.4
	override method espacioQueOcupa()=altura*3
	
}
class HiebaBuena inherits Menta {
	override method espacioQueOcupa()= super()*2
}

class Soja inherits Planta {
	
	override method horasDeSol()= if( self.altura()<0.5) 6 else if(self.altura().between(0.5, 1)) 7 else 9
	override method condicionAlternativa()=anioDeObtencionSemilla >2007 and altura>1
	override  method daNuevaSemilla()= self.altura()> 1 and anioDeObtencionSemilla>2007 
	override  method espacioQueOcupa()= altura/2

}

