Algoritmo Programa_PIES_PULGADAS_YARDAS_CM_MT
	Escribir "INGRESE LA CONVERSI�N QUE DESEA REALIZAR A PARTIR DE TUS PIES"
	Mientras opci�n <> 5  Hacer
		Escribir  "1 - Convertir pies a pulgadas"
		Escribir  "2 - Convertir pies a yardas"
		Escribir  "3 - Convertir pies a cent�metros"
		Escribir  "4 - Convertir pies a metros"
		Escribir  "5 - Salir"
		
		Leer opci�n
		
		Segun opci�n Hacer
			Caso 1:
				Escribir "Ingrese los pies que desee convertir"
				Leer ft
				Si ft<0 Entonces
					Escribir "Ingrese un valor positivo debido a que no hay distancias negativas"
				SiNo
					tt<- ft*12
					Escribir "La conversi�n resulta en: ", tt, " pulgadas"
				Fin Si
				
			Caso 2:
				Escribir "Ingrese los pies que desee convertir"
				Leer ft
				Si ft<0 Entonces
					Escribir "Ingrese un valor positivo debido a que no hay distancias negativas"
				SiNo
				tt<- ft/0.333
				Escribir "La conversi�n resulta en: ", tt, " yardas"
			FinSi
			
			Caso 3:
				Si ft<0 Entonces
					Escribir "Ingrese un valor positivo debido a que no hay distancias negativas"
				SiNo
					tt<- ft*30.48
					Escribir "La conversi�n resulta en: ", tt, " cent�metros"
				FinSi
			Caso 4:
				Si ft<0 Entonces
					Escribir "Ingrese un valor positivo debido a que no hay distancias negativas"
				SiNo
					tt<- ft*0.3048
					Escribir "La conversi�n resulta en: ", tt, " metros"
				FinSi
				
		FinSegun
		
	FinMientras
	
FinAlgoritmo
