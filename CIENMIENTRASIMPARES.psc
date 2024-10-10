//MODIFICA EL ALGORITMO ANTERIOR PARA QUE SÓLO MUESTRE LOS NÚMEROS IMPARES.
Algoritmo CIENMIENTRASIMPARES
	Definir N Como Entero
	Escribir "MODIFICA EL ALGORITMO ANTERIOR PARA QUE SÓLO MUESTRE LOS NÚMEROS IMPARES."
	Mientras opción <> 2  Hacer
		Escribir  "1 - iniciar/repetir proceso"
		Escribir  "2 - Terminar"
		Leer opción
		
		Segun opción Hacer
			
			Caso 1:
				Escribir "Ingrese el límite para que aparezcan números impares"
				Leer limit
				N=0
				Para i<-1 Hasta limit Con Paso 1 Hacer
					limit=limit-1
					N<-N+1
					Si N%2<>0 Entonces
						Escribir N
					Fin Si
				Fin Para
		FinSegun
		
    FinMientras
	
FinAlgoritmo