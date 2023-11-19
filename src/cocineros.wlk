import platos.*

class Cocinero{
	var especialidad 
	
	method cambiarEspecialidad(especialidadNueva) {
		especialidad = especialidadNueva
	}
	
	method catar(plato) {
		especialidad.catar(plato)
	}
	
	method cocinar(){
		especialidad.cocinar(self)
	}
	
	method participarDeTorneo(torneo){
		torneo.participar(self)
	}
	
}

class Pastelero {
	const nivelDeDulzorDeseado
	
	method catar(plato){
		return ((5*plato.azucar())/nivelDeDulzorDeseado).max(10)
	}
	
	method cocinar(cocinero){
		return  new Postre(cantColores = nivelDeDulzorDeseado/50, platoHechoPor = cocinero)
	}
	
}

class Chef {
	
	const cantidadDeCaloriasMaximas
	
	method cumplirExpectativas(plato) = plato.esBonito() and plato.calorias() <cantidadDeCaloriasMaximas 
	
	method catar(plato){
		if(self.cumplirExpectativas(plato)){
			return 10
		}else{
			return 0
		}
	}
	
	method cocinar(cocinero){
		return new Principal(cantidadAzucar = cantidadDeCaloriasMaximas, bonito = true, platoHechoPor = cocinero)
	}
	
}

class Souchef inherits Chef{
	override method catar(plato){
		if(self.cumplirExpectativas(plato)){
			return 10
		}else{
			return (plato.calorias()/100).max(6)
		}
	}
	
	override method cocinar(cocinero) = new Entrada(platoHechoPor = cocinero)
}