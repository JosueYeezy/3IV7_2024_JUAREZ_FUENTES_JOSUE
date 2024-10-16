//ELABORA UN PROGRAMA PARA RESOLVER UNA ECUACIÓN DE SEGUNDO GRADO, TENIENDO EN?CUENTA LAS SOLUCIONES COMPLEJAS. (la chicharronera) 
Algoritmo CHICHARRONERA
	Escribir "BIENVENIDO A LA NUEVA SALVACIÓN DE TU CARERRA DE MATEMÁTICAS"
	Escribir "Introduce el valor de a"
	Leer a
	Escribir "Introduce el valor de b"
	Leer b
	Escribir "Escribe el valor de c"
	Leer c
	
	bneg<- -1*b
	bcubo<- b*b
	
	epep<-a*c
	yezzy<- 4*epep
	
	rz<-bcubo-yezzy
	
	
	Si rz<-0 Entonces
		Escribir "Número imaginario mi pai"
	SiNo
		chich<-RC(rz)
		abajo<- 2*a
		
		arribauno<-bneg+rz
		
		arribados<-bneg-rz
		
		equisuno<- arribauno/abajo
		equisdos<- arribados/abajo
		Si equisdos=equisuno Entonces
			Escribir "El único resultado es: ", equisdos
		SiNo
			Escribir "El resultado de x1 es: ", equisuno
			Escribir "El resultado de x2 es: ", equisdos
		Fin Si
	Fin Si
	
	
	
FinAlgoritmo
