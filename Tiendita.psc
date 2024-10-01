Algoritmo Tiendita
	
	Definir producto Como Caracter
	Definir codigoproducto, cantidad Como Entero
	Definir precio Como Real
	
	//tengo que crear un menú de selección
	Mientras opción <> 5  Hacer
		Escribir  "1 - Ingresa un nuevo producto"
		Escribir  "2 - Actualiza un producto"
		Escribir  "3 - Consulta el inventario"
		Escribir  "4 - Generar reporte"	
		Escribir  "5 - Salir"
	
	Leer opción
	
	Segun opción Hacer
		Caso 1:
			Escribir "Ingresa el nombre del producto"
			Leer producto
			Escribir "Ingresa el código del producto"
			Leer codigoproducto
			Escribir "Ingresa la cantidad"
			Leer cantidad
			Escribir "Ingresa el Precio del producto"
			Leer precio
		Caso 2:
			Escribir "Ingresa el código del producto a actualizar"
			Leer codigoproducto
			Escribir "Ingresa la nueva cantidad"
			Leer cantidad
		Caso 3:
			Escribir "Consultar inventario"
			Escribir "Nombre del producto ", producto
			Escribir "Código del producto", codigoproducto
			Escribir "Precio del producto", precio
			Escribir "Cantidad del producto", cantidad
		Caso 4:
			Escribir "Reporte de producto"
			Escribir "¿Cuántas unidades del producto se han vendido"
			Leer inexistentes
			nstock<- cantidad-inexistentes
			Escribir "La cantidad en stock de dicho producto ahora es de: " nstock
			ventas<- nstock*precio
			Escribir "La cantidad de dinero que ha generado es de :" ventas
			
	    Caso 5:
			Escribir "Gracias, hasta luego"


	Fin Segun
Fin Mientras
FinAlgoritmo
