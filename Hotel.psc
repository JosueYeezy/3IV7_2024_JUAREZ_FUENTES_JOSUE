Algoritmo Hotel
	
	//tengo que crear un menú de selección
	Escribir "Hola, bienvenido a su hotel de confianza" 
	Escribir "Ingrese la capacidad del hotel"
	Leer capacidaddelhotel
				Mientras opción <> 5 Hacer
					Escribir "1- Reservar"
					Escribir "2 - Cancelar reservación"
					Escribir "3 - Consultar fechas"
					Escribir "4 - Gestión de disponibilidad"
					Escribir "5 - Salir"
				
				Leer opción
				
				Segun opción Hacer
					Caso 1:
				Escribir "Ingresa el número de habitación a reservar"
				Leer numhab
				Si numhab>capacidaddelhotel Entonces
					Escribir "No contamos con ese número de habitación"
				Fin Si
				Escribir "Ingrese día de check in formato 00"
				Leer diain
				Escribir "Ingresa el mes de check in formato 00"
				Leer mesin
				Escribir "Ingresa el año de check in formato 0000"
				Leer añoin
				Escribir "Ingrese los días que se va a hospedar con nosotros"
				Leer diash
				Escribir "Tu número de registro es: "
				Leer numreg
			Caso 2:
				Escribir "Ingresa el código de reservación para cancelar"
				Leer numreg
	            Escribir "Esperemos que vuelva a reservar con nosotros"
			Caso 3:
				Escribir "Consultar fechas"
				Escribir "Escriba la fecha que desea consultar"
				Escribir "Día a consultar"
				Leer diaconsulta
				Escribir "Día a consultar"
				Leer mesconsulta
				Escribir "Día a consultar"
				Leer añoconsulta
				Escribir "Ingrese el número de habitación que desea consultar"
				Leer numhabcon
				Si diaconsulta=diain y mesconsulta=mesin y añoconsulta=añoin y numhabcon= numhab Entonces
					Escribir "El cuarto que desea consultar ya ha sido reservado"
				SiNo
					Escribir "El cuarto que acaba de consultar no está siendo ocupado, le recomendamos reservarlo"
				Fin Si
			Caso 4:
				Escribir "Reporte de ocupación"
				Escribir "¿Cuántas habitaciones están siendo ocupadas?"
				Leer habocup
				habdisp <- capacidaddelhotel- habocup
				porcentaje<- (habocup*100)/capacidaddelhotel
				Escribir "Se está ocupando un " porcentaje "% del espacio total del hotel"
				Escribir "Quedan " habdisp " habitaciones disponibles"
				
			Caso 5:
				Escribir "Gracias, hasta luego"
				
				
		FinSegun
	Fin Mientras
FinAlgoritmo
