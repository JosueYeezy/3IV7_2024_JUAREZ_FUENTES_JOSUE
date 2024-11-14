import tkinter as tk
from tkinter import messagebox, simpledialog, ttk
import os

ARCHIVO = "FIFA.txt"
fifa = []

def cargar_datos():
    if os.path.exists(ARCHIVO):
        with open(ARCHIVO, "r") as f:
            for linea in f:
                partes = linea.strip().split(",")
                if len(partes) >= 10:
                    jugador = {
                        "nombre": partes[0], "pais": partes[1], "equipo": partes[2], "glb": partes[3], "pos": partes[4],
                        "ritmo": partes[5], "tiro": partes[6], "pase": partes[7], "reg": partes[8], "dfc": partes[9], "fis": partes[10]
                    }
                    fifa.append(jugador)

def guardar_datos():
    with open(ARCHIVO, "w") as f:
        for jugador in fifa:
            f.write(f"{jugador['nombre']},{jugador['pais']},{jugador['equipo']},{jugador['glb']},{jugador['pos']}," 
                    f"{jugador['ritmo']},{jugador['tiro']},{jugador['pase']},{jugador['reg']},{jugador['dfc']},{jugador['fis']}\n")

def registrar_futbolista():
    datos = {}
    campos = ["nombre", "pais", "equipo", "glb", "pos", "ritmo", "tiro", "pase", "reg", "dfc", "fis"]
    for campo in campos:
        datos[campo] = simpledialog.askstring("Registro", f"Ingrese el {campo} del futbolista:")
    
    fifa.append(datos)
    guardar_datos()
    messagebox.showinfo("Éxito", "Jugador registrado exitosamente")

def consultar_jugador():
    nombre = simpledialog.askstring("Consulta", "Ingrese el nombre del futbolista para consultar sus datos:")
    encontrado = False
    for jugador in fifa:
        if jugador['nombre'] == nombre:
            encontrado = True
            info = "\n".join([f"{k.capitalize()}: {v}" for k, v in jugador.items()])
            messagebox.showinfo("Datos del jugador", info)
            break
    if not encontrado:
        messagebox.showwarning("No encontrado", f"No se encontró un jugador con el nombre {nombre}.")


def editar_carta():
    nombre = simpledialog.askstring("Editar", "Ingrese el nombre del futbolista para editar su carta:")
    for jugador in fifa:
        if jugador['nombre'] == nombre:
            for campo in ["equipo", "glb", "ritmo", "tiro", "pase", "reg", "dfc", "fis"]:
                nuevo_valor = simpledialog.askstring("Editar", f"Ingrese el nuevo {campo} o presione Enter para mantener el actual:")
                if nuevo_valor:
                    jugador[campo] = nuevo_valor
            guardar_datos()
            messagebox.showinfo("Éxito", "Jugador editado exitosamente.")
            return
    messagebox.showwarning("No encontrado", f"No se encontró un jugador con el nombre {nombre}.")

def eliminar_jugador():
    nombre = simpledialog.askstring("Eliminar", "Ingrese el nombre del futbolista que desea eliminar:")
    for jugador in fifa:
        if jugador['nombre'] == nombre:
            fifa.remove(jugador)
            guardar_datos()
            messagebox.showinfo("Éxito", f"El jugador {nombre} ha sido eliminado.")
            return
    messagebox.showwarning("No encontrado", f"No se encontró un jugador con el nombre {nombre}.")
def mostrar_tabla():
   
    ventana_tabla = tk.Toplevel()
    ventana_tabla.title("Tabla de Jugadores Registrados")
    ventana_tabla.geometry("800x400")

    # Crear el Treeview
    columnas = ("nombre", "pais", "equipo", "glb", "pos", "ritmo", "tiro", "pase", "reg", "dfc", "fis")
    tabla = ttk.Treeview(ventana_tabla, columns=columnas, show="headings")

  
    for col in columnas:
        tabla.heading(col, text=col.capitalize())
        tabla.column(col, width=80)

    
    for jugador in fifa:
        
        valores = tuple(jugador.get(col, "") if jugador.get(col) is not None else " " for col in columnas)
        
        if any(valores):  
            tabla.insert("", tk.END, values=valores)

    tabla.pack(expand=True, fill="both")

    ventana_tabla.mainloop()

def main():
    cargar_datos()
    
    ventanaprincipal = tk.Tk()
    ventanaprincipal.geometry("400x400")
    ventanaprincipal.title("Menú de FIFA")

    etiqueta = tk.Label(ventanaprincipal, text="Menú del FIFA DE IPN", font=("Arial", 16))
    etiqueta.pack(pady=10)

    botones = [
        ("Registrar Futbolista", registrar_futbolista),
        ("Editar Carta", editar_carta),
        ("Consultar Jugador", consultar_jugador),
        ("Eliminar Jugador", eliminar_jugador),
        ("Mostrar Tabla de Jugadores", mostrar_tabla),  # Botón para abrir la tabla
        ("Salir", ventanaprincipal.quit)
    ]

    for texto, comando in botones:
        boton = tk.Button(ventanaprincipal, text=texto, command=comando, width=30, height=2)
        boton.pack(pady=5)

    ventanaprincipal.mainloop()

main()