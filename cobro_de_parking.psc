Algoritmo Estacionamiento
	Definir horaIn, minIn, horaOut, minOut Como Entero
	Definir tiempoTotal, totalCobro Como Real
	
	Escribir "Ingrese la hora de entrada (formato 24 horas):"
	Leer horaIn
	Si horaIn > 24 o horaIn < 0 Entonces
		Escribir "Error: La hora de entrada no puede ser mayor a 24h"
	SiNo
		Escribir "Ingrese los minutos de entrada:"
		Leer minIn
		Si minIn > 60 o minIn < 0 Entonces
			Escribir "Error: Los minutos de entrada no pueden ser mayor a 60min"
		SiNo
			Escribir "Ingrese la hora de salida (formato 24 horas):"
			Leer horaOut
			Si horaOut > 24 o horaOut < 0 Entonces
				Escribir "Error: La hora de salida no puede ser mayor a 24h"
			FinSi
			Escribir "Ingrese los minutos de salida:"
			Leer minOut
			Si minOut > 60 o minOut < 0 Entonces
				Escribir "Error: Los minutos de salida no pueden ser mayor a 60min"
			SiNo
				Si (horaOut < horaIn) O ((horaOut = horaIn) Y (minOut < minIn)) Entonces
					Escribir "Error: La hora de salida no puede ser menor que la hora de entrada en el mismo día."
				FinSi
			FinSi
		FinSi
	FinSi
	
	tiempoTotal = (horaOut * 60 + minOut) - (horaIn * 60 + minIn)
	
	Si tiempoTotal < 15 Entonces
		totalCobro = 0
	Sino
		Definir horasComp, bloques15 Como Entero
		horasComp = Trunc(tiempoTotal / 60)
		Definir minsExtra Como Entero
		minsExtra = tiempoTotal % 60
		totalCobro = horasComp * 15.0
		Si minsExtra > 0 Entonces
			bloques15 = Trunc(minsExtra / 15)
			Si minsExtra % 15 > 0 Entonces
				bloques15 = bloques15 + 1
			FinSi
			totalCobro = totalCobro + (bloques15 * 6.0)
		FinSi
	FinSi
	
	Escribir "El costo total por el estacionamiento es: ", totalCobro, " pesos"
FinAlgoritmo

