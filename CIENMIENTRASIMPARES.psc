//MODIFICA EL ALGORITMO ANTERIOR PARA QUE S�LO MUESTRE LOS N�MEROS IMPARES.
Algoritmo CIENMIENTRASIMPARES
	Definir N Como Entero
	Escribir "MODIFICA EL ALGORITMO ANTERIOR PARA QUE S�LO MUESTRE LOS N�MEROS IMPARES."
	Mientras opci�n <> 2  Hacer
		Escribir  "1 - iniciar/repetir proceso"
		Escribir  "2 - Terminar"
		Leer opci�n
		
		Segun opci�n Hacer
			
			Caso 1:
				Escribir "Ingrese el l�mite para que aparezcan n�meros impares"
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