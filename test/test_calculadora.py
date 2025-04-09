import unittest
from io import StringIO
import sys
from unittest.mock import patch
from app.calculadora import calculadora

class TestCalculadora(unittest.TestCase):
    
    def setUp(self):
        # Redirigir la salida estándar para capturarla durante las pruebas
        self.held_output = StringIO()
        sys.stdout = self.held_output
    
    def tearDown(self):
        # Restaurar la salida estándar
        self.held_output.close()
        sys.stdout = sys.__stdout__
    
    def test_suma_correcta(self):
        inputs = ['1', '5', '3', '5']  # Sumar 5 + 3, luego salir
        with patch('builtins.input', side_effect=inputs):
            calculadora()
        output = self.held_output.getvalue()
        self.assertIn("5.0 + 3.0 = 8.0", output)
    
    def test_resta_correcta(self):
        inputs = ['2', '10', '4', '5']
        with patch('builtins.input', side_effect=inputs):
            calculadora()
        output = self.held_output.getvalue()
        self.assertIn("10.0 - 4.0 = 6.0", output)
    
    def test_multiplicacion_correcta(self):
        inputs = ['3', '7', '6', '5']
        with patch('builtins.input', side_effect=inputs):
            calculadora()
        output = self.held_output.getvalue()
        self.assertIn("7.0 * 6.0 = 42.0", output)
    
    def test_division_correcta(self):
        inputs = ['4', '15', '5', '5']
        with patch('builtins.input', side_effect=inputs):
            calculadora()
        output = self.held_output.getvalue()
        self.assertIn("15.0 / 5.0 = 3.0", output)
    
    def test_division_por_cero(self):
        inputs = ['4', '10', '0', '5']
        with patch('builtins.input', side_effect=inputs):
            calculadora()
        output = self.held_output.getvalue()
        self.assertIn("Error: No se puede dividir por cero", output)
    
    def test_entrada_no_numerica(self):
        inputs = ['1', 'abc', '5', '5']
        with patch('builtins.input', side_effect=inputs):
            calculadora()
        output = self.held_output.getvalue()
        self.assertIn("Error: Por favor ingrese números válidos", output)
    
    def test_opcion_invalida(self):
        inputs = ['6', '5']  # Opción inválida, luego salir
        with patch('builtins.input', side_effect=inputs):
            calculadora()
        output = self.held_output.getvalue()
        self.assertIn("Opción no válida", output)
    
    def test_salida_programa(self):
        inputs = ['5']  # Solo salir
        with patch('builtins.input', side_effect=inputs):
            calculadora()
        output = self.held_output.getvalue()
        self.assertIn("¡Hasta luego!", output)

if __name__ == '__main__':
    unittest.main()