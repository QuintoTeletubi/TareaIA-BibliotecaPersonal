# 📚 Biblioteca Personal - Aplicación Web

Una aplicación web completa para gestionar tu biblioteca personal, desarrollada con Python Flask.

## 🚀 Características

- ✅ Sistema de autenticación (login/registro)
- 📖 Gestión completa de libros (CRUD)
- 🔍 Búsqueda y filtrado avanzado
- ⭐ Sistema de calificaciones (1-5 estrellas)
- 📊 Dashboard con estadísticas
- 📁 Exportación a Excel y PDF
- 📱 Interfaz responsive y moderna
- 🔒 Datos seguros por usuario

## 🛠️ Tecnologías Utilizadas

- **Backend**: Python 3.8+ con Flask
- **Base de datos**: SQLite con SQLAlchemy
- **Frontend**: HTML5, CSS3, Bootstrap 5, JavaScript
- **Autenticación**: Flask-Login con hash de contraseñas
- **Exportación**: Pandas (Excel) y ReportLab (PDF)

## 📋 Requisitos Previos

- Python 3.8 o superior
- pip (gestor de paquetes de Python)

## ⚡ Instalación y Ejecución

### Paso 1: Clonar o descargar el proyecto
```bash
# Si tienes git instalado
git clone <url-del-repositorio>
cd biblioteca_personal

# O simplemente descarga y extrae el archivo ZIP
```

### Paso 2: Crear un entorno virtual (recomendado)
```bash
# Crear entorno virtual
python -m venv venv

# Activar entorno virtual
# En Windows:
venv\Scripts\activate
# En macOS/Linux:
source venv/bin/activate
```

### Paso 3: Instalar dependencias
```bash
pip install -r requirements.txt
```

### Paso 4: Ejecutar la aplicación
```bash
python app.py
```

### Paso 5: Abrir en el navegador
Abre tu navegador web y ve a: `http://localhost:5000`

## 🎯 Uso de la Aplicación

### 1. Registro e Inicio de Sesión
- Crea una cuenta nueva con usuario, email y contraseña
- Inicia sesión con tus credenciales

### 2. Gestión de Libros

#### Agregar libros:
- Haz clic en "Agregar Libro"
- Completa la información: título, autor, género
- Marca si ya lo leíste y agrega calificación/comentarios
- Guarda el libro

#### Ver y buscar libros:
- Ve a "Mis Libros" para ver tu biblioteca completa
- Usa la barra de búsqueda para encontrar libros específicos
- Filtra por estado (todos/leídos/por leer)

#### Editar libros:
- Haz clic en el botón de editar (lápiz) en cualquier libro
- Modifica la información necesaria
- Guarda los cambios

#### Eliminar libros:
- Haz clic en el botón de eliminar (papelera)
- Confirma la eliminación en el modal

### 3. Dashboard
- Ve estadísticas de tu biblioteca
- Acceso rápido a funciones principales
- Visualiza tus libros más recientes

### 4. Exportación
- **Excel**: Descarga tu biblioteca completa en formato .xlsx
- **PDF**: Genera un documento PDF con tu lista de libros

## 📁 Estructura del Proyecto

```
biblioteca_personal/
│
├── app.py                  # Aplicación principal de Flask
├── models.py               # Modelos de base de datos
├── requirements.txt        # Dependencias de Python
├── README.md              # Este archivo
│
├── templates/             # Plantillas HTML
│   ├── base.html         # Template base
│   ├── login.html        # Página de login
│   ├── register.html     # Página de registro
│   ├── dashboard.html    # Dashboard principal
│   ├── books.html        # Lista de libros
│   ├── add_book.html     # Agregar libro
│   └── edit_book.html    # Editar libro
│
├── static/               # Archivos estáticos
│   └── css/
│       └── style.css     # Estilos personalizados
│
└── exports/              # Archivos exportados (se crea automáticamente)
```

## 🔧 Configuración Adicional

### Cambiar la clave secreta
En `app.py`, línea 13, cambia la clave secreta por una más segura:
```python
app.config['SECRET_KEY'] = 'tu_clave_secreta_super_segura_aqui'
```

### Modo de producción
Para usar en producción, cambia la última línea de `app.py`:
```python
if __name__ == '__main__':
    app.run(debug=False, host='0.0.0.0', port=5000)
```

## 🎨 Características de la Interfaz

- **Responsive Design**: Funciona perfectamente en móviles y escritorio
- **Bootstrap 5**: Interfaz moderna y profesional
- **Font Awesome**: Iconos intuitivos en toda la aplicación
- **Alertas Automáticas**: Mensajes que se ocultan automáticamente
- **Modales de Confirmación**: Para acciones importantes como eliminar
- **Paginación**: Para manejar bibliotecas grandes eficientemente

## 📊 Funcionalidades de Exportación

### Excel (.xlsx)
- Incluye todos los campos del libro
- Formato tabular para análisis
- Compatible con Microsoft Excel y LibreOffice

### PDF
- Formato profesional para imprimir
- Tabla organizada con información clave
- Incluye nombre del usuario y fecha de generación

## 🚨 Solución de Problemas Comunes

### Error: "No module named 'flask'"
```bash
pip install flask
# O instalar todas las dependencias:
pip install -r requirements.txt
```

### Error: "Address already in use"
Si el puerto 5000 está ocupado, cámbialo en `app.py`:
```python
app.run(debug=True, port=5001)  # Usar puerto 5001
```

### La base de datos no se crea
Asegúrate de que tienes permisos de escritura en el directorio del proyecto.

### Problemas con exportación a PDF
Verifica que ReportLab esté instalado correctamente:
```bash
pip install reportlab
```

## 🔒 Seguridad

- Las contraseñas se almacenan con hash usando Werkzeug
- Cada usuario solo ve sus propios libros
- Validación de formularios en el frontend y backend
- Protección contra acceso no autorizado

## 📝 Notas de Desarrollo

- La aplicación usa SQLite para simplicidad (fácil de configurar)
- Para producción, considera usar PostgreSQL o MySQL
- Los archivos exportados se guardan en la carpeta `exports/`
- Las sesiones se manejan de forma segura con Flask-Login

## 🤝 Contribuciones

Si encuentras algún error o tienes sugerencias de mejora:
1. Describe el problema claramente
2. Incluye pasos para reproducir el error
3. Proporciona capturas de pantalla si es necesario

## 📄 Licencia

Este proyecto es de uso educativo y personal.

---

¡Disfruta organizando tu biblioteca personal! 📚✨