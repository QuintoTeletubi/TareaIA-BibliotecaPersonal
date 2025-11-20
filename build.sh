#!/usr/bin/env bash
# Render Build Script

echo "� Verificando versión de Python..."
python3 --version

# Check Python version compatibility
PYTHON_VERSION=$(python3 -c "import sys; print(f'{sys.version_info.major}.{sys.version_info.minor}')")
echo "✅ Usando Python $PYTHON_VERSION"

if [[ "$PYTHON_VERSION" != "3.9" ]]; then
    echo "⚠️  Advertencia: Se esperaba Python 3.9, pero se encontró $PYTHON_VERSION"
fi

echo "�🔧 Instalando dependencias..."
pip install --upgrade pip
pip install --no-cache-dir -r requirements.txt

echo "📁 Creando directorios necesarios..."
mkdir -p exports

echo "✅ Build completado"