Algoritmo Escenario_4_Examen
	//Variables
	Definir CantidadPersonas, añosconsulta, viviendo, joven, anciano, años, i, x, l, z Como Entero 
	//Limpiar las Variables
	CantidadPersonas <- 0
	viviendo <- 0
	//Meter la cantidad de personas
	Escribir "Escribe el año actual"
	Leer añoac
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
		Escribir "Ingresa el año de nacimiento de la persona numero ", i
		Leer born[i]
		Escribir "Ingresa el año de fallecimiento de la persona numero ", i
		Leer muerte[i]
		Si muerte[i] - born[i] < 0  o muerte[i] > añoac o born[i] > añoac Entonces
			Escribir "La persona no puede morir antes de nacer ni haber nacido o morir en una fecha mayor a la actual"
		FinSi
	Fin Para
	//Años a consultar 
	Escribir "Ingresa la cantidad de años a consultar"
	Leer añosconsulta
	Dimension Anioing[añosconsulta]
	Si añosconsulta <= 0 Entonces
		Escribir "Ingresar un valor válido"
	SiNo
		Para X <- 1 Hasta añosconsulta Con Paso 1 Hacer
			Escribir "¿De que año desea conocer los datos?"
			Leer Anioing[X]
			Si Anioing[X] > añoac Entonces
				Escribir "El año a consultar no puede ser mayor al actual"
			FinSi
		FinPara
		Para l <- 1 Hasta añosconsulta Con Paso 1 Hacer
			viviendo <- 0
			joven <- 9999
			anciano <- 0
			Para Z <- 1 Hasta CantidadPersonas Con Paso 1 Hacer
				//Saber cuantas personas vivas había en ese año
				Si born[Z] <= Anioing[l] Y muerte[Z] >= Anioing[l] Entonces
					viviendo = viviendo + 1
				FinSi
				
				años = Anioing[l] - born[Z]
				//Calcular la persona mas joven del año a consultar
				Si años < joven y años >= 0 Entonces
					joven <- años
				FinSi
				//Calcular la persona mas vieja del año a consultar
				Si años >= anciano y años >= joven y 0 >= Anioing[l]-muerte[Z] Entonces
					anciano <- años
				FinSi
			Fin Para
			Escribir "En el año ", Anioing[l], " habia ", viviendo," personas con vida." 
			Si viviendo <= 0 Entonces
				Escribir "No habia personas vivas"
			SiNo
				Escribir "La persona mas joven tenia ", joven, " años"
				Escribir "La persona mas longeva tenia ", anciano, " años"
				FinSi
				
			FinPara
			
		
	FinSi
	
FinAlgoritmo
