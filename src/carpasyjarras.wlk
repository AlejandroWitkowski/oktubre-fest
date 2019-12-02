

class Carpas{
	const limite //gente admitida
	const tieneBanda //true o false
	const marcaQueVende
	const personasIngresadas //lista de personas ingresadas
	
	method ingresarPersona(persona) = personasIngresadas.add(persona)
	method queMarcaVende() = marcaQueVende
	method bandaTradicional() = tieneBanda
	method cuantaGenteHay() = personasIngresadas.size()
	
	
	method dejaIngresar(persona) = self.siEntraSuperaElLimite() and not(persona.estaEbrio())
	
	method siEntraSuperaElLimite() = self.cuantaGenteHay() + 1 <= limite  
	
	method puedeEntrar(persona) = persona.quiereEntrarEnLaCarpa(self) and self.dejaIngresar(persona)
	
	method ingresoEfectivo(persona){
		if(not(self.puedeEntrar(persona))) {self.error("La persona no puede ingresar a la carpa")}
			self.ingresarPersona(persona)
	}
	
	method ebriosEmpedernidos() = personasIngresadas.count({persona => persona.esEbrioEmpedernido()})
	
	 
	
}

class Jarras{
	const capacidad //en litros
	const marca //marca de cerveza
	
	method capacidad() = capacidad 
		
	method contenidoAlcohol() = capacidad * marca.graduacion()
	
	method queMarca() = marca
}

