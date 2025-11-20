#!/usr/bin/env bash
# Render Build Script

echo "🐍 Detectando versiones de Python disponibles..."
ls -la /opt/render/project/python/ 2>/dev/null || echo "No se puede acceder al directorio Python"

echo "🔍 Intentando usar Python 3.11 (más compatible con pandas)..."
if command -v python3.11 &> /dev/null; then
    export PYTHON_CMD=python3.11
    export PIP_CMD=pip3.11
elif command -v python3.10 &> /dev/null; then
    export PYTHON_CMD=python3.10
    export PIP_CMD=pip3.10
else
    echo "⚠️  Usando Python por defecto"
    export PYTHON_CMD=python3
    export PIP_CMD=pip3
fi

echo "✅ Usando: $PYTHON_CMD"
$PYTHON_CMD --version

echo "🔧 Instalando dependencias..."
$PIP_CMD install --upgrade pip
$PIP_CMD install --no-cache-dir --break-system-packages -r requirements.txtsh
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