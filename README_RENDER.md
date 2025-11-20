# 🚀 Despliegue en Render - Biblioteca Personal

## Configuración del Servicio Web

### 1. Configuración Básica
- **Name:** `biblioteca-personal`
- **Repository:** `QuintoTeletubi/TareaIA-BibliotecaPersonal`
- **Branch:** `main`
- **Root Directory:** (dejar vacío)

### 2. Configuración de Build
- **Runtime:** `Python 3`
- **Build Command:** `./build.sh`
- **Start Command:** `gunicorn app:app`

### 3. Variables de Entorno (Environment Variables)
```
SECRET_KEY = tu_clave_secreta_aqui_123456
PYTHON_VERSION = 3.11.0
```

### 4. Configuración de Base de Datos (Opcional)
- Ve a "New" → "PostgreSQL" 
- Nombre: `biblioteca-db`
- Se conectará automáticamente

## 🎯 Credenciales de Demo
- **Usuario:** demo
- **Contraseña:** demo123

## ✅ Funcionalidades Completas
- ✅ Autenticación completa
- ✅ Gestión de libros (CRUD)
- ✅ Dashboard con estadísticas
- ✅ Exportación Excel (100% funcional)
- ✅ Exportación PDF (100% funcional)
- ✅ Diseño moderno responsive

## 🌐 URL Final
Tu app estará disponible en: `https://biblioteca-personal-xxxx.onrender.com`