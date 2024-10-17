	SubProceso Rect (base,altura)
		Definir area, perimetro Como Real
		area= base*altura
		perimetro= 2*(base+altura)
		Escribir "El área del rectángulo es de: ", area
		Escribir "El perímetro del rectángulo es de: ", perimetro
FinSubProceso

SubProceso Trian (base,altura, lado1, lado2, lado3)
	Definir area, perimetro Como Real
	area= (base*altura)/2
	perimetro=lado1+lado2+lado3
	Escribir "El área del triángulo es de: ", area
	Escribir "El perímetro del triángulo es de: ", perimetro
FinSubProceso

SubProceso Penta (lado,apotema)
	Definir area, perimetro Como Real
	perimetro= lado*5
	area= (perimetro*apotema)/2
	Escribir "El área del pentágono es de: ", area
	Escribir "El perímetro del pentágono es de: ", perimetro
FinSubProceso

SubProceso Hexa (lado,apotema)
	Definir area, perimetro Como Real
	perimetro= lado*6
	area= (perimetro*apotema)/2
	Escribir "El área del Hexágono es de: ", area
	Escribir "El perímetro del Hexágono es de: ", perimetro
FinSubProceso

SubProceso Hepta (lado,apotema)
	Definir area, perimetro Como Real
	perimetro= lado*7
	area= (perimetro*apotema)/2
	Escribir "El área del hectágono es de: ", area
	Escribir "El perímetro del hectágono es de: ", perimetro
FinSubProceso
SubProceso Octa (lado,apotema)
	Definir area, perimetro Como Real
	perimetro= lado*8
	area= (perimetro*apotema)/2
	Escribir "El área del Octágono es de: ", area
	Escribir "El perímetro del Octágono es de: ", perimetro
FinSubProceso


Algoritmo CalculadoraDeFiguras
	Definir opción Como Caracter
	Definir base, altura, lado, lado1, lado2, lado3, apotema Como Real
	
	Mientras Opción <> "G" Hacer
		
	
	Escribir "Seleccione la figura"
	Escribir "A- Área y Perímetro de un rectángulo"
	Escribir "B- Área y Perímetro de un triángulo"
	Escribir "C- Área y Perímetro de un pentágono"
	Escribir "D- Área y Perímetro de un hexágono"
	Escribir "E- Área y Perímetro de un hectágono"
	Escribir "F- Área y Perímetro de un octágono"
	Escribir "G- Cerrar programa"
	
	Leer opción
	
	Segun opción hacer
			Caso "A" :
				Escribir "Ingrese la base"
				Leer base
				Escribir "Ingrese la altura"
				Leer altura
				Rect(base, altura)
			Caso "B" :
				Escribir "Ingrese la base"
				Leer base
				Escribir "Ingrese la altura"
				Leer altura
				Escribir "Ingrese el lado 1"
				Leer lado1
				Escribir "Ingrese el lado 2"
				Leer lado2
				Escribir "Ingrese el lado 3"
				Leer lado3
				Trian(base, altura, lado1, lado2, lado3)
			Caso "C" :
				Escribir "Ingrese el lado"
				Leer lado
				Escribir "Ingrese el apotema"
				Leer apotema
				Penta(lado, apotema)
			Caso "D" :
				Escribir "Ingrese el lado"
				Leer lado
				Escribir "Ingrese el apotema"
				Leer apotema
				Hexa(lado, apotema)
			Caso "E" :
				Escribir "Ingrese el lado"
				Leer lado
				Escribir "Ingrese el apotema"
				Leer apotema
				Hepta(lado, apotema)
			Caso "F" :
				Escribir "Ingrese el lado"
				Leer lado
				Escribir "Ingrese el apotema"
				Leer apotema
				Octa(lado, apotema)
	FinSegun
	
FinMientras

	
FinAlgoritmo
