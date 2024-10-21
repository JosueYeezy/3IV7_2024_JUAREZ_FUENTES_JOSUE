import math

#vamos a crear una función para calcular el área y perímetro

def rectángulo(base, altura):
    area= base*altura
    perímetro= 2*(base+altura)
    return area, perímetro

def triángulo(base, altura, lado1, lado2, lado3):
    area= (base*altura)/2
    perímetro= lado1 + lado2+ lado3
    return area, perímetro

def esfera (radio):
    volumen = (4/3)*math.pi* radio **3
    return volumen

def menu():
    print("Bienvenide a Python con fucnoiones mi todo tibio:")
    print("Elige una opción mi niño: ")
    print("A- Área y Perímetro de un rectángulo ")
    print("B- Área y Perímetro de un triángulo ")
    print("C- Volumen de una esfera")


    #programa
menu()
opcion = input("Introduce la opción a desear: ").upper()


if opcion == "A":
        base = float(input ("Introduce la base del rectángulo"))
        altura = float(input ("Introduce la altura del rectángulo"))
        area, perímetro = rectángulo(base, altura)
        print("El area es de: ", area)
        print("El perímetro es de: ", perímetro)

elif opcion == "B":
        base = float(input ("Introduce la base del triángulo"))
        altura = float(input ("Introduce la altura del triángulo"))
        lado1 = float(input("Inroduce el valor de lado 1"))
        lado2 = float(input("Inroduce el valor de lado 2"))
        lado3 = float(input("Inroduce el valor de lado 3"))
        area, perímetro = triángulo(base, altura, lado1, lado2, lado3)
        print("El area es de: ", area)
        print("El perímetro es de: ", perímetro)


elif opcion == "C":
        radio = float(input ("Introduce el radio"))
        volumen = esfera(radio)
        print("El volumen es de: ", volumen)
    

else:
         print("Opción no válida mi rey")

         #Deberán de realizar el porgrama e convertir un número decimal a binario y de binario a decimal