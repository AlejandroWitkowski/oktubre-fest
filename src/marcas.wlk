class Marcas {
	const contenidoLupulo //cuantos gramos de lupulo por litro llevan
	const paisOrigen	//pais donde se fabrican
	var graduacionReglamentaria //Se utiliza para las cervezas Negras y Rojas
	
	method modificarGraduacion(nueva){graduacionReglamentaria = nueva} 
	
	method cuantoLupulo() = contenidoLupulo
	
	method graduacion() = (graduacionReglamentaria).min(contenidoLupulo * 2)
	
	method origen() = paisOrigen
}

class Rubia inherits Marcas{
	const graduacion //porcentaje de alcohol en volumen, ejemplo 10% es 0,1 litro alcohol por litro de cerveza
	
	override method graduacion() = graduacion
}

class Negra inherits Marcas{
	
	
}

class Roja inherits Marcas{
	
	override method graduacion() =  super() * 1.25
}