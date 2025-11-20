#!/usr/bin/env bash
# Render Build Script

echo "🐍 Verificando versión de Python..."
python3 --version

echo "🔧 Instalando dependencias..."
python3 -m pip install --upgrade pip
python3 -m pip install --break-system-packages -r requirements.txt

echo "📁 Creando directorios necesarios..."
mkdir -p exports

echo "✅ Build completado"