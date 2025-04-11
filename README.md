# Calculadora en Python con Pruebas Unitarias

## 📋 Descripción

Proyecto que implementa una calculadora básica en Python con operaciones aritméticas y pruebas unitarias para garantizar su correcto funcionamiento.

## 🗂️ Estructura del proyecto

proyecto-calculadora/
│
├── app/
│ ├── init.py
│ └── calculadora.py # Lógica principal de la calculadora
│
├── tests/
│ ├── init.py
│ └── test_calculadora.py # Pruebas unitarias
│
└── README.md # Documentación

## ⚙️ Instalación

1. Clonar repositorio:
   ```bash
   git clone [url-del-repositorio]
   ```
2. Navegar al directorio:
   cd proyecto-calculadora
   🚀 Uso
   Ejecutar la calculadora:

bash
Copy
python app/calculadora.py
🧪 Pruebas unitarias
Ejecutar todas las pruebas
bash
Copy
python -m unittest discover -s tests
Ejecutar prueba específica
bash
Copy
python -m unittest tests.test_calculadora.TestCalculadora.[nombre_prueba]
📝 Funciones implementadas
Función Descripción Ejemplo de uso
sumar(a, b) Suma dos números sumar(2, 3) → 5
restar(a, b) Resta dos números restar(5, 2) → 3
multiplicar(a, b) Multiplica dos números multiplicar(3, 4) → 12
dividir(a, b) Divide dos números dividir(10, 2) → 5.0
⚠️ Nota: dividir() lanza ValueError si se divide por cero.

🔍 Ejemplo de pruebas
python
Copy

# tests/test_calculadora.py

import unittest
from app.calculadora import sumar

class TestCalculadora(unittest.TestCase):
def test_sumar(self):
self.assertEqual(sumar(2, 3), 5)
self.assertEqual(sumar(-1, 1), 0)
📌 Requisitos
Python 3.6+

Módulo unittest (incluido en la librería estándar)
