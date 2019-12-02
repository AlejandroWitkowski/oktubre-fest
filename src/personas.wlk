class Persona{
	const peso 
	const jarrasCompradas //Lista de jarras que compró
	const musicaTradicional  //true o false
	const nivelDeAguante //numero
	const nacionalidad 
	
	
	method leGustaLaMarca(marca) = nacionalidad.leGusta(marca)
	
	method estaEbrio() = (self.cantidadAlcoholIngerido() * peso) > nivelDeAguante
	
	method cantidadAlcoholIngerido() = jarrasCompradas.sum({jarra => jarra.capacidad()})

	method quiereEntrarEnLaCarpa(carpa) =
		self.leGustaLaMarca(carpa.queMarcaVende()) and
		self.cumplePreferenciaMusical(carpa) and
		nacionalidad.cantidadPersonas(carpa.cuantaGenteHay())
		
		
	method cumplePreferenciaMusical(carpa) = musicaTradicional == carpa.bandaTradicional() 
	
	method esEbrioEmpedernido() = jarrasCompradas.all({jarra => jarra.capacidad() >= 1})
	
	method esPatriota() = jarrasCompradas.all({jarra => jarra.queMarca().origen() == nacionalidad})
	
	method comprarJarra(jarra) = jarrasCompradas.add(jarra) 
}



object belga {
	method leGusta(marca) = marca.cuantoLupulo() > 4 // gramos de lupulo por litro
	
	method cantidadPersonas(cantidad) = true
}

object aleman {
	method leGusta(marca) = true // le gustan todas
	
	method cantidadPersonas(cantidad) = cantidad.even()
}

object checo {
	method leGusta(marca) = marca.graduacion() > 0.08 //graduacion
	method cantidadPersonas(cantidad) = true
}