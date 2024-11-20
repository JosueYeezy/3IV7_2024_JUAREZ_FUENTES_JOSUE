#lista parecia a un arreglo, solo que es una estructura más versátil
#que puede manejar enteros,flotantes, cadenas, caractéres etc.

#vamos a crear una lista de estudiantes
estudiantes=["Ana", "Hugo", "Paco", "Luis"]
#métodos propios append(x) Agregar un eleemtno al final, insert (i, x), inserta un elemento en una posición específica
#remove(x), elimina el primer elemento

#agregar uno
estudiantes.append("Diana")
print("Lista de estudiantes:", estudiantes)

#eliminar a uno
estudiantes.remove("Hugo")
print("Lista de estudiantes:", estudiantes)