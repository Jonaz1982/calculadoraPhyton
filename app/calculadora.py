def calculadora():
    print("Calculadora básica")
    print("Operaciones disponibles:")
    print("1. Suma (+)")
    print("2. Resta (-)")
    print("3. Multiplicación (*)")
    print("4. División (/)")
    print("5. Salir")
    
    while True:
        try:
            opcion = input("\nSeleccione una operación (1-5): ")
            
            if opcion == '5':
                print("¡Hasta luego!")
                break
                
            if opcion not in ['1', '2', '3', '4']:
                print("Opción no válida. Por favor, elija 1-5.")
                continue
                
            num1 = float(input("Ingrese el primer número: "))
            num2 = float(input("Ingrese el segundo número: "))
            
            if opcion == '1':
                print(f"Resultado: {num1} + {num2} = {num1 + num2}")
            elif opcion == '2':
                print(f"Resultado: {num1} - {num2} = {num1 - num2}")
            elif opcion == '3':
                print(f"Resultado: {num1} * {num2} = {num1 * num2}")
            elif opcion == '4':
                if num2 == 0:
                    print("Error: No se puede dividir por cero")
                else:
                    print(f"Resultado: {num1} / {num2} = {num1 / num2}")
                    
        except ValueError:
            print("Error: Por favor ingrese números válidos")
        except Exception as e:
            print(f"Ocurrió un error: {e}")

# Ejecutar la calculadora
if __name__ == "__main__":
    calculadora()