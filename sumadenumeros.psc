Algoritmo sumadenumeros
	Definir  N , suma Como Entero
	Escribir "Desarrolle un algoritmo para sumar n números"
	Mientras opción <> 2  Hacer
		Escribir  "1 - iniciar/repetir proceso"
		Escribir  "2 - Terminar"
		Leer opción
		
		Segun opción Hacer
			
			Caso 1:
				Escribir "Escriba hasta que número gusta sumar" 
				Leer límite
				N<-0
				suma<-0
				Para i<-1 Hasta límite Con Paso 1 Hacer
				   límite<-límite-1
					N=N+1
					Escribir N
					suma=suma+N
					Escribir suma
				Fin Para
				Escribir "La suma es: ", suma
FinSegun
FinMientras

FinAlgoritmo
