import os
from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_login import LoginManager
from werkzeug.security import generate_password_hash

# Importar la aplicación principal
from app import app, db, User

# Función para crear las tablas y usuario admin
def init_db():
    with app.app_context():
        # Crear todas las tablas
        db.create_all()
        
        # Crear usuario admin si no existe
        admin = User.query.filter_by(username='admin').first()
        if not admin:
            admin_user = User(
                username='admin',
                email='admin@biblioteca.com',
                password_hash=generate_password_hash('admin123')
            )
            db.session.add(admin_user)
            db.session.commit()
            print("Usuario admin creado: admin/admin123")

if __name__ == "__main__":
    init_db()
    print("Base de datos inicializada correctamente")