Algoritmo Escenario_4_Examen
	//Variables
	Definir CantidadPersonas, a�osconsulta, viviendo, joven, anciano, a�os, i, x, l, z Como Entero 
	//Limpiar las Variables
	CantidadPersonas <- 0
	viviendo <- 0
	//Meter la cantidad de personas
	Escribir "Escribe el a�o actual"
	Leer a�oac
	Escribir "Ingresa la cantidad de personas "
	Leer CantidadPersonas
	Si CantidadPersonas < 0 Entonces
		Escribir "No puedes tener personas negativas"
	FinSi
	//Crear arreglos
	Dimension born[CantidadPersonas]
	Dimension muerte[CantidadPersonas]
	//Entradas de datos
	Para i <- 1 Hasta CantidadPersonas Con Paso 1 Hacer
		Escribir "Ingresa el a�o de nacimiento de la persona numero ", i
		Leer born[i]
		Escribir "Ingresa el a�o de fallecimiento de la persona numero ", i
		Leer muerte[i]
		Si muerte[i] - born[i] < 0  o muerte[i] > a�oac o born[i] > a�oac Entonces
			Escribir "La persona no puede morir antes de nacer ni haber nacido o morir en una fecha mayor a la actual"
		FinSi
	Fin Para
	//A�os a consultar 
	Escribir "Ingresa la cantidad de a�os a consultar"
	Leer a�osconsulta
	Dimension Anioing[a�osconsulta]
	Si a�osconsulta <= 0 Entonces
		Escribir "Ingresar un valor v�lido"
	SiNo
		Para X <- 1 Hasta a�osconsulta Con Paso 1 Hacer
			Escribir "�De que a�o desea conocer los datos?"
			Leer Anioing[X]
			Si Anioing[X] > a�oac Entonces
				Escribir "El a�o a consultar no puede ser mayor al actual"
			FinSi
		FinPara
		Para l <- 1 Hasta a�osconsulta Con Paso 1 Hacer
			viviendo <- 0
			joven <- 9999
			anciano <- 0
			Para Z <- 1 Hasta CantidadPersonas Con Paso 1 Hacer
				//Saber cuantas personas vivas hab�a en ese a�o
				Si born[Z] <= Anioing[l] Y muerte[Z] >= Anioing[l] Entonces
					viviendo = viviendo + 1
				FinSi
				
				a�os = Anioing[l] - born[Z]
				//Calcular la persona mas joven del a�o a consultar
				Si a�os < joven y a�os >= 0 Entonces
					joven <- a�os
				FinSi
				//Calcular la persona mas vieja del a�o a consultar
				Si a�os >= anciano y a�os >= joven y 0 >= Anioing[l]-muerte[Z] Entonces
					anciano <- a�os
				FinSi
			Fin Para
			Escribir "En el a�o ", Anioing[l], " habia ", viviendo," personas con vida." 
			Si viviendo <= 0 Entonces
				Escribir "No habia personas vivas"
			SiNo
				Escribir "La persona mas joven tenia ", joven, " a�os"
				Escribir "La persona mas longeva tenia ", anciano, " a�os"
				FinSi
				
			FinPara
			
		
	FinSi
	
FinAlgoritmo
