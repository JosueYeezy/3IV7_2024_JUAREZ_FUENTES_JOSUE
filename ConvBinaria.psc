Algoritmo ConvBinaria
	Definir num, cociente Como Entero
	definir binario como texto
	
	//el binario lo tengo que concatenar
	binario = ""
	Escribir "Ingresa el número que desee convertir"
	Leer num
	
	Si num>=  0  Entonces
		Mientras num > 0 Hacer
			residuo = num%2
			//Empezar a armar el binario
			nuevobnario <- ConvertirATexto(residuo )
			//concatenar los elementos de texto
			binario = nuevobnario + binario
			
			num= Trunc(num/2)
		Fin Mientras
		
		//si el número es 0
		Si binario = "" Entonces
			binario="0"
		Fin Si
		Escribir "El número binario es: ", binario
	FinSi
	
	
	
FinAlgoritmo
