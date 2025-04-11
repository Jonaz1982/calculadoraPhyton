# Usar imagen base oficial de Python
FROM python:3.8-slim

# Crear y usar directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar dependencias e instalarlas
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el resto de la aplicación
COPY . .

# Comando por defecto al iniciar el contenedor
CMD ["python", "app/main.py"]
