#!/usr/bin/env bash
# Render Build Script

echo "🔧 Instalando dependencias..."
pip install --upgrade pip
pip install --no-cache-dir -r requirements.txt

echo "📁 Creando directorios necesarios..."
mkdir -p exports

echo "✅ Build completado"