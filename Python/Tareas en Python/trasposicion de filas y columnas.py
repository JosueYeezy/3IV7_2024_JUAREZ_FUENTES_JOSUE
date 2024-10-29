#deberan crear un codigo mediante el cual se 
#introduzca una matriz de 3x3 o 5x5 ingrese los valores imprima la matriz original y luego su transpuesta
def generar_matriz(filas, columnas):
    cuadro = []
    for x in range(filas):
        linea = []
        for y in range(columnas):
            numero = int(input(f"Escribe el valor para la posición ({x+1}, {y+1}): "))
            linea.append(numero)
        cuadro.append(linea)
    return cuadro

def mostrar_matriz(cuadro):
    for linea in cuadro:
        print(linea)

def invertir_matriz(cuadro):
    filas = len(cuadro)
    columnas = len(cuadro[0])
    cuadro_invertido = [[0] * filas for _ in range(columnas)]
    
    for x in range(filas):
        for y in range(columnas):
            cuadro_invertido[y][x] = cuadro[x][y]
    
    return cuadro_invertido

# Solicitar el tamaño del cuadro
dimension = int(input("Escribe el tamaño del cuadro (3 o 5): "))
if dimension not in [3, 5]:
    print("Tamaño inválido. Escribe 3 o 5.")
else:
    cuadro = generar_matriz(dimension, dimension)
    
    print("\nCuadro original:")
    mostrar_matriz(cuadro)
    
    cuadro_invertido = invertir_matriz(cuadro)
    
    print("\nCuadro invertido:")
    mostrar_matriz(cuadro_invertido)