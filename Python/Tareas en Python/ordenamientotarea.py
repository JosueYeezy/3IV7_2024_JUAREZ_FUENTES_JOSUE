import tkinter as tk
from tkinter import messagebox
from time import time


# Algoritmos de ordenamiento
#burbuja
def burbuja(lista):
    n = len(lista)
    for i in range(n):
        for j in range(0, n-i-1):
            if(lista[j] > lista[j+1]):
                lista[j], lista[j+1] = lista[j+1], lista[j]
    return lista

#metodo de insercion
def insercion(lista):
    for i in range(1, len(lista)):
        key = lista[i]
        j = i - 1
        while j >= 0 and key < lista[j]:
            lista[j+1] = lista[j]
            j -= 1
        lista[j+1] = key
    return lista

#metodo seleccion
def seleccion_sort(lista):
    n = len(lista)
    for i in range(n):
        min_idx = i
        for j in range(i+1, n):
            if(lista[j] < lista[min_idx]):
                min_idx = j
            lista[i], lista[min_idx] = lista[min_idx], lista[i]
    return lista


#merge
def merge(lista):
    if(len(lista)>1):
        mid = len(lista)//2
        izquierda = lista[:mid]
        derecha = lista[mid:]

        #recursivo
        merge(izquierda)
        merge(derecha)

        i = j = k = 0

        while i < len(izquierda) and j < len(derecha):
            if izquierda[i] < derecha[j]:
                lista[k] = izquierda[i]
                i += 1
            else:
                lista[k] = derecha[j]
                j += 1
            k += 1
        
        while i < len(izquierda):
            lista[k] = izquierda[i]
            i += 1
            k += 1

        while j < len(derecha):
            lista[k] = derecha[j]
            j += 1
            k += 1
    return lista


#quick sort
def quick_sort(lista):
    if(len(lista) <= 1):
        return lista
    pivote = lista[len(lista)//2]
    izquierda = [x for x in lista if x < pivote]
    medio = [x for x in lista if x == pivote]
    derecha = [x for x in lista if x > pivote]

    return quick_sort(izquierda) + medio + quick_sort(derecha)




# Función para manejar el botón de ordenamiento
def ordenamiento(metodo):
    if not ingrnum.get().strip():  # Validación de entrada
        messagebox.showerror("Error", "Por favor, ingresa una lista de números.")
        return
    try:
        nums = list(map(int, ingrnum.get().split(',')))
        if len(nums) > 40:
            messagebox.showerror("Error", "El máximo de números permitido es 40.")
            return
        
        original = nums.copy()
        start_time = time()

        if metodo == "Método Burbuja":
            ordnum = burbuja(nums)
        elif metodo == "Método de Inserción":
            ordnum = insercion(nums)
        elif metodo == "Método de selección":
            ordnum = seleccion_sort(nums)
        elif metodo == "Método Merge":
            ordnum = merge(nums)
        elif metodo == "Quick Sort":
            ordnum = quick_sort(nums)
        else:
            messagebox.showerror("Error", "Método de ordenamiento no válido.")
            return

        end_time = time()
        elapsed_time = end_time - start_time

        messagebox.showinfo(
            "Resultados",
            f"Lista Original: {original}\n"
            f"Lista Ordenada: {ordnum}\n"
            f"Tiempo de Ejecución: {elapsed_time:.6f} segundos"
        )
    except ValueError:
        messagebox.showerror("Error", "Asegúrate de ingresar una lista de números separados por comas.")


# Interfaz gráfica
ventprin = tk.Tk()
ventprin.title("Ordenamiento de Números")

tk.Label(ventprin, text="Ingrese una lista de números (máximo 40), separados por comas:").pack(pady=10)
ingrnum = tk.Entry(ventprin, width=50)
ingrnum.pack(pady=5)

tk.Label(ventprin, text="Selecciona un método de ordenamiento:").pack(pady=10)

# Botones para cada método de ordenamiento
tk.Button(ventprin, text="Método Burbuja", command=lambda: ordenamiento("Método Burbuja")).pack(pady=5)
tk.Button(ventprin, text="Método de Inserción", command=lambda: ordenamiento("Método de Inserción")).pack(pady=5)
tk.Button(ventprin, text="Método de Selección ",command=lambda: ordenamiento("Método de selección")).pack(pady=5)
tk.Button(ventprin, text="Merge Sort", command=lambda: ordenamiento("Método Merge")).pack(pady=5)
tk.Button(ventprin, text="Quick Sort", command=lambda: ordenamiento("Quick Sort")).pack(pady=5)



ventprin.mainloop()