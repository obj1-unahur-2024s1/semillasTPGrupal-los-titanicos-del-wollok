class Planta{ 
	const anioDeObtencionSemilla
	var altura

	method altura()= altura		//devuelve un numero
	method horasDeSol()	   //numero	
//se dice que una planta es fuerte si tolera más de 10 horas de sol al día
	method esFuerte()= if (self.horasDeSol()>10) true      //devuelve un booleano
//i da nuevas semillas, para lo cual se tiene que cumplir que la planta sea fuerte o bien una condición alternativa, que define cada especie.
	method daNuevaSemilla() = if(self.esFuerte() or super()) true //devuelve un booleano
	method espacioQueOcupa()  //tipo numero
}
class Menta inherits Planta {
	
	
	override method horasDeSol()= 6
	override method daNuevaSemilla()= if (self.altura()>0.4) true else false
	override method espacioQueOcupa()=self.altura()*3
	override method esFuerte(){} 
}

class Soja inherits Plata {
	
	override method horasDeSol()= if( self.altura()<0.5) 6 else if(self.altura().between(0.5, 1)) 7 else 9
	//La condición alternativa para que de semillas es que su propia semilla sea de obtención reciente (posterior al 2007) y además su altura sea de más de 1 metro
	override method method daNuevaSemilla()= self.altura()> 1 and anioDeObtencionSemilla>2007 
	//El espacio que ocupa es la mitad de su altura.

}

