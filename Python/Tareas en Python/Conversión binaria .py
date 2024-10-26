import math

# Función para convertir de decimal a binario
def ConvBin(Numdec):
    i = 0
    cdbin = 0
    sobras = 0
    while Numdec > 0:
        sobras = Numdec % 2
        cdbin += sobras * (10 ** i)
        Numdec = math.trunc(Numdec / 2)
        i += 1  
    
    return cdbin

# Función para convertir números binarios a decimales
def ConvDecl(NumBin):
    rsldec = 0
    tamaño = len(NumBin)
    
    # Recorrer cada dígito del número binario
    for i in range(tamaño):
        # Convertir el dígito en entero y multiplicar por 2^(posición)
        rsldec += int(NumBin[i]) * (2 ** (tamaño - i - 1))
    
    return rsldec

# Menú 
def menu():
    print("Elige una opción: ")
    print("A: Convertir de decimal a binario")
    print("B: Convertir de binario a decimal")

# Programa principal
menu()
opcion = input("Introduce la opción (A-Convertir a binario, B-Convertir a decimal): ").upper()  

if opcion == "A":
    Numdec = int(input("Introduce el número decimal para convertir a binario: "))  
    cdbin = ConvBin(Numdec)
    
    print("El número en binario sería:", cdbin)
   
elif opcion == "B":
    NumBin = input("Introduce la cadena binario para convertir a decimal: ")  
    rsldec = ConvDecl(NumBin) 
    
    print("El número en decimal ingresado sería:", rsldec)
else:
    print("No hay una función asignada a esa letra")