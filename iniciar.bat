@echo off
echo ========================================
echo    BIBLIOTECA PERSONAL - FLASK APP
echo ========================================
echo.

REM Verificar si Python esta instalado
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Python no esta instalado o no esta en PATH
    echo Por favor instala Python desde https://python.org
    pause
    exit /b 1
)

echo [1/4] Verificando Python... OK

REM Crear entorno virtual si no existe
if not exist "venv" (
    echo [2/4] Creando entorno virtual...
    python -m venv venv
) else (
    echo [2/4] Entorno virtual ya existe... OK
)

REM Activar entorno virtual
echo [3/4] Activando entorno virtual...
call venv\Scripts\activate

REM Instalar dependencias
echo [4/4] Instalando dependencias...
pip install -r requirements.txt

echo.
echo ========================================
echo        INICIANDO APLICACION
echo ========================================
echo.
echo La aplicacion se esta iniciando...
echo Abre tu navegador en: http://localhost:5000
echo.
echo Presiona Ctrl+C para detener la aplicacion
echo.

REM Ejecutar la aplicacion
python app.py

echo.
echo La aplicacion se ha cerrado.
pause