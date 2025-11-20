# Biblioteca Personal - Despliegue en Vercel

Esta aplicación de gestión de biblioteca personal está lista para desplegar en Vercel.

## 🚀 Pasos para Desplegar

### 1. Preparar Repositorio en GitHub

1. **Crear repositorio en GitHub:**
   - Ve a https://github.com
   - Clic en "New repository"
   - Nombre: `biblioteca-personal`
   - Hazlo público o privado
   - **NO** inicialices con README

2. **Subir tu código:**
   ```bash
   cd biblioteca_personal
   git init
   git add .
   git commit -m "Initial commit - Biblioteca Personal"
   git branch -M main
   git remote add origin https://github.com/TU_USUARIO/biblioteca-personal.git
   git push -u origin main
   ```

### 2. Desplegar en Vercel

1. **Ve a Vercel:**
   - Abre https://vercel.com
   - Haz clic en "Sign up" o "Login"
   - **Conecta con GitHub**

2. **Importar Proyecto:**
   - Clic en "New Project"
   - Selecciona tu repositorio `biblioteca-personal`
   - Clic en "Import"

3. **Configuración Automática:**
   - Vercel detectará automáticamente que es una app Python
   - Usará el archivo `vercel.json` que creamos
   - **No cambies nada**, solo clic en "Deploy"

### 3. Configurar Variables de Entorno (Opcional)

En el dashboard de Vercel:
- Ve a Settings → Environment Variables
- Agrega: `SECRET_KEY` = `tu_clave_secreta_produccion`
- Agrega: `VERCEL` = `true`

### 4. ¡Listo! 

Tu app estará disponible en: `https://biblioteca-personal-tu-usuario.vercel.app`

## 📝 Credenciales de Demo

Para probar la app desplegada:
- **Usuario:** demo
- **Contraseña:** demo123

## ⚠️ Limitaciones en Vercel

- **Base de datos temporal:** Los datos se pierden al reiniciar
- **Solo para demo:** Para producción real, usa PostgreSQL (Supabase, Neon)
- **Sin archivos persistentes:** Las exportaciones funcionan pero no se guardan

## 🔄 Actualizaciones

Para actualizar la app:
1. Haz cambios en tu código local
2. `git add .`
3. `git commit -m "Descripción cambios"`
4. `git push`
5. ¡Vercel se actualiza automáticamente!

## 🎯 URL Final

Una vez desplegado, tu biblioteca personal estará en:
`https://biblioteca-personal.vercel.app`