Algoritmo Hotel
	
	//tengo que crear un men� de selecci�n
	Escribir "Hola, bienvenido a su hotel de confianza" 
	Escribir "Ingrese la capacidad del hotel"
	Leer capacidaddelhotel
				Mientras opci�n <> 5 Hacer
					Escribir "1- Reservar"
					Escribir "2 - Cancelar reservaci�n"
					Escribir "3 - Consultar fechas"
					Escribir "4 - Gesti�n de disponibilidad"
					Escribir "5 - Salir"
				
				Leer opci�n
				
				Segun opci�n Hacer
					Caso 1:
				Escribir "Ingresa el n�mero de habitaci�n a reservar"
				Leer numhab
				Si numhab>capacidaddelhotel Entonces
					Escribir "No contamos con ese n�mero de habitaci�n"
				Fin Si
				Escribir "Ingrese d�a de check in formato 00"
				Leer diain
				Escribir "Ingresa el mes de check in formato 00"
				Leer mesin
				Escribir "Ingresa el a�o de check in formato 0000"
				Leer a�oin
				Escribir "Ingrese los d�as que se va a hospedar con nosotros"
				Leer diash
				Escribir "Tu n�mero de registro es: "
				Leer numreg
			Caso 2:
				Escribir "Ingresa el c�digo de reservaci�n para cancelar"
				Leer numreg
	            Escribir "Esperemos que vuelva a reservar con nosotros"
			Caso 3:
				Escribir "Consultar fechas"
				Escribir "Escriba la fecha que desea consultar"
				Escribir "D�a a consultar"
				Leer diaconsulta
				Escribir "D�a a consultar"
				Leer mesconsulta
				Escribir "D�a a consultar"
				Leer a�oconsulta
				Escribir "Ingrese el n�mero de habitaci�n que desea consultar"
				Leer numhabcon
				Si diaconsulta=diain y mesconsulta=mesin y a�oconsulta=a�oin y numhabcon= numhab Entonces
					Escribir "El cuarto que desea consultar ya ha sido reservado"
				SiNo
					Escribir "El cuarto que acaba de consultar no est� siendo ocupado, le recomendamos reservarlo"
				Fin Si
			Caso 4:
				Escribir "Reporte de ocupaci�n"
				Escribir "�Cu�ntas habitaciones est�n siendo ocupadas?"
				Leer habocup
				habdisp <- capacidaddelhotel- habocup
				porcentaje<- (habocup*100)/capacidaddelhotel
				Escribir "Se est� ocupando un " porcentaje "% del espacio total del hotel"
				Escribir "Quedan " habdisp " habitaciones disponibles"
				
			Caso 5:
				Escribir "Gracias, hasta luego"
				
				
		FinSegun
	Fin Mientras
FinAlgoritmo
