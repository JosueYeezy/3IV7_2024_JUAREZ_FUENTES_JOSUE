Algoritmo sumadenumeros
	Definir  N , suma Como Entero
	Escribir "Desarrolle un algoritmo para sumar n n�meros"
	Mientras opci�n <> 2  Hacer
		Escribir  "1 - iniciar/repetir proceso"
		Escribir  "2 - Terminar"
		Leer opci�n
		
		Segun opci�n Hacer
			
			Caso 1:
				Escribir "Escriba hasta que n�mero gusta sumar" 
				Leer l�mite
				N<-0
				suma<-0
				Para i<-1 Hasta l�mite Con Paso 1 Hacer
				   l�mite<-l�mite-1
					N=N+1
					Escribir N
					suma=suma+N
					Escribir suma
				Fin Para
				Escribir "La suma es: ", suma
FinSegun
FinMientras

FinAlgoritmo
