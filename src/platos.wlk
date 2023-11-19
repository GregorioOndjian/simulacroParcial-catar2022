class Plato{
	const platoHechoPor 
	
	method azucar() = 0
	
	method esBonito() = false
	
	method calorias() = 3*self.azucar() + 100
	
}

class Entrada inherits Plato{
	override method esBonito() = true
}

class Principal inherits Plato{
	
	const cantidadAzucar
	const bonito
	
	override method esBonito() = bonito
	
	override method azucar() = cantidadAzucar
}

class Postre inherits Plato{
	
	const cantColores 
	
	override method azucar() = 120
	
	override method esBonito() = cantColores > 3
}

