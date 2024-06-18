
import Plantas.*
class Parcela {
	
	const property ancho
	const property largo
	const property plantas=[]  //se pueden repetir(?
	var property horasDeSol=0	
	//method horasDeSol()
	
	method  superficieParcela()= ancho*largo //area
	
	method cantidadMaxima()= self.superficieParcela()/ if(ancho> largo)5 else (3+largo)
	method siTieneComplicaciones()= plantas.any({p=> p.horasDeSol()   <horasDeSol})
	method plantar_(unaPlanta)=
	
		if(plantas.size()+1< self.cantidadMaxima() 
			or horasDeSol > unaPlanta.horasDeSol()+2
		)self.error("No hay suficiente espacio o mcuhas horas de sol para la planta") else 
			plantas.add(unaPlanta)
		
	method cantidadDePlantas()=plantas.size()
	method cantPlantasEnCondicionIdeal()= plantas.count{p=> p.condicionIdeal(self)}
		
}
class ParcelaEcologica inherits Parcela{
	
	method seAsociaBien(unaPlanta)=
		!self.siTieneComplicaciones() and unaPlanta.condicionIdeal(self)
	
}
class ParcelaIndustriales inherits Parcela{
	method seAsociaBien(unaPlanta)= plantas.size()<=2 and unaPlanta.esFuerte()
}

object inta{
	const property parcelas=#{}
	
	method promedioDePlantasPorParcela()=
		
		parcelas.sum{x=>x.cantidadDePlantas()}/ parcelas.size()
	
	method parcelaMasAutoSustentable()=
		//obtener la parcela= buscar
		parcelas.filter({p=> p.cantidadDePlantas()>4}).max{p=> p.cantPlantasEnCondicionIdeal()}
}