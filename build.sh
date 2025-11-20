#!/usr/bin/env bash
# Render Build Script

# Instalar dependencias
pip install --upgrade pip
pip install -r requirements.txt

# Crear directorio para exports si no existe
mkdir -p exports