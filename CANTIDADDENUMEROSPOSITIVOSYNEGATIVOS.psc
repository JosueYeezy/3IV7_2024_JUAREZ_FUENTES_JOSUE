Algoritmo CANTIDADDENUMEROSPOSITIVOSYNEGATIVOS
	Escribir "ESTO ES PARA SABER LA CANTIDAD DE NUMEROS NEGATIVOS Y POSITIVOS QUE HAY DENTRO DE UNA SERIE "
	Mientras Opci�n <> 2 Hacer
		Escribir  "1 - INICIAR ALGORITMO"
		Escribir  "2 - SALIR"
		Leer opci�n
		segun opci�n hacer
			Caso 1:
	Escribir "Ingrese la cantidad de numeros que va a ingresar"
	leer cantn
	Para i<-1 Hasta cantn Con Paso 1 Hacer
		Escribir "ingrese el numero"
		leer numeritop
		si numeritop>0 Entonces
			positive<-positive + 1 
		SiNo
			nega<- nega + 1
		FinSi
	Fin Para
	Escribir "la cantidad total de n�meros positivos es: ", positive
	Escribir "la cantidad total de n�meros negativos es: ", nega
FinSegun
FinMientras

FinAlgoritmo