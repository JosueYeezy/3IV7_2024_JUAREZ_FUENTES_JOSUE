Algoritmo ProgramaGRADOSF
	Escribir "INGRESE LA CONVERSI�N QUE DESEA REALIZAR A PARTIR DE TUS GRADOS FAHRENHEIT"
	Mientras opci�n <> 4  Hacer
		Escribir  "1 - Convertir FAHRENHEIT a CELSIUS"
		Escribir  "2 - Convertir FAHRENHEIT a KELVIN"
		Escribir  "3 - Convertir FAHRENHEIT a RANKINE"
		Escribir  "4 - Salir"
		
		Leer opci�n
		
		Segun opci�n Hacer
			Caso 1:
				Escribir "Ingrese los FAHRENHEIT que desee convertir"
				Leer FR
				Z<-(FR- 32) * 5/9
					Escribir "La conversi�n resulta en: ", Z, " Celsius"
				
			Caso 2:
				Escribir "Ingrese los FAHRENHEIT que desee convertir"
				Leer FR
				W<-(FR- 32) * 5/9 + 273.15 
					Escribir "La conversi�n resulta en: ", W, " KELVIN"
				
				Caso 3:
					Escribir "Ingrese los FAHRENHEIT que desee convertir"
					Leer FR
				AARONGORDO<-FR + 459.67
					Escribir "La conversi�n resulta en: ", AARONGORDO, " RANKINE"
				
				
		FinSegun
		
	FinMientras
	
FinAlgoritmo

