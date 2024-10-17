	SubProceso Rect (base,altura)
		Definir area, perimetro Como Real
		area= base*altura
		perimetro= 2*(base+altura)
		Escribir "El �rea del rect�ngulo es de: ", area
		Escribir "El per�metro del rect�ngulo es de: ", perimetro
FinSubProceso

SubProceso Trian (base,altura, lado1, lado2, lado3)
	Definir area, perimetro Como Real
	area= (base*altura)/2
	perimetro=lado1+lado2+lado3
	Escribir "El �rea del tri�ngulo es de: ", area
	Escribir "El per�metro del tri�ngulo es de: ", perimetro
FinSubProceso

SubProceso Penta (lado,apotema)
	Definir area, perimetro Como Real
	perimetro= lado*5
	area= (perimetro*apotema)/2
	Escribir "El �rea del pent�gono es de: ", area
	Escribir "El per�metro del pent�gono es de: ", perimetro
FinSubProceso

SubProceso Hexa (lado,apotema)
	Definir area, perimetro Como Real
	perimetro= lado*6
	area= (perimetro*apotema)/2
	Escribir "El �rea del Hex�gono es de: ", area
	Escribir "El per�metro del Hex�gono es de: ", perimetro
FinSubProceso

SubProceso Hepta (lado,apotema)
	Definir area, perimetro Como Real
	perimetro= lado*7
	area= (perimetro*apotema)/2
	Escribir "El �rea del hect�gono es de: ", area
	Escribir "El per�metro del hect�gono es de: ", perimetro
FinSubProceso
SubProceso Octa (lado,apotema)
	Definir area, perimetro Como Real
	perimetro= lado*8
	area= (perimetro*apotema)/2
	Escribir "El �rea del Oct�gono es de: ", area
	Escribir "El per�metro del Oct�gono es de: ", perimetro
FinSubProceso


Algoritmo CalculadoraDeFiguras
	Definir opci�n Como Caracter
	Definir base, altura, lado, lado1, lado2, lado3, apotema Como Real
	
	Mientras Opci�n <> "G" Hacer
		
	
	Escribir "Seleccione la figura"
	Escribir "A- �rea y Per�metro de un rect�ngulo"
	Escribir "B- �rea y Per�metro de un tri�ngulo"
	Escribir "C- �rea y Per�metro de un pent�gono"
	Escribir "D- �rea y Per�metro de un hex�gono"
	Escribir "E- �rea y Per�metro de un hect�gono"
	Escribir "F- �rea y Per�metro de un oct�gono"
	Escribir "G- Cerrar programa"
	
	Leer opci�n
	
	Segun opci�n hacer
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
