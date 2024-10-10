//DESARROLLE UN ALGORITMO QUE PERMITA REALIZAR LA ESCRITURA DE LOS PRIMEROS 100 NUMEROS NATURALES UTILIZANDO LA SENTENCIA MPARA. 
Algoritmo CIENPARA
	Definir N Como Entero
	Escribir "DESARROLLE UN ALGORITMO QUE PERMITA REALIZAR LA ESCRITURA DE LOS PRIMEROS 100 NUMEROS NATURALES UTILIZANDO LA SENTENCIA PARA."
	Mientras opción <> 2  Hacer
		Escribir  "1 - iniciar/repetir proceso"
		Escribir  "2 - Terminar"
		Leer opción
		
		Segun opción Hacer
			
			Caso 1:
				Escribir "Ingrese la cantidad de numeros naturales que quieres que aparezcan"
				Leer limit
				N=0
				Para i<-1 Hasta limit Con Paso 1 Hacer
					limit=limit-1
					N<-N+1
					Escribir N
				Fin Para
		FinSegun
		
    FinMientras
	
FinAlgoritmo