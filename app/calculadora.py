# calculadora.py

def sumar(a, b):
    return a + b

def restar(a, b):
    return a - b

def multiplicar(a, b):
    return a * b

def dividir(a, b):
    if b == 0:
        return "Error: No se puede dividir entre cero."
    return a / b

def mostrar_menu():
    print("Calculadora en Python")
    print("Selecciona una opción:")
    print("1. Sumar")
    print("2. Restar")
    print("3. Multiplicar")
    print("4. Dividir")
    print("5. Salir")

while True:
    mostrar_menu()
    opcion = input("Ingresa tu opción (1-5): ")

    if opcion == '5':
        print("¡Hasta luego!")
        break

    try:
        num1 = float(input("Ingresa el primer número: "))
        num2 = float(input("Ingresa el segundo número: "))
    except ValueError:
        print("Error: Ingresa valores numéricos válidos.")
        continue

    if opcion == '1':
        print(f"Resultado: {sumar(num1, num2)}")
    elif opcion == '2':
        print(f"Resultado: {restar(num1, num2)}")
    elif opcion == '3':
        print(f"Resultado: {multiplicar(num1, num2)}")
    elif opcion == '4':
        print(f"Resultado: {dividir(num1, num2)}")
    else:
        print("Opción no válida. Intenta nuevamente.")

    print("\n")
