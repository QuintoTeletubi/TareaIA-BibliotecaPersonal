from flask_sqlalchemy import SQLAlchemy
from flask_login import UserMixin
from werkzeug.security import generate_password_hash, check_password_hash
from datetime import datetime

db = SQLAlchemy()

class User(UserMixin, db.Model):
    """Modelo de Usuario para el sistema de autenticación"""
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(80), unique=True, nullable=False)
    email = db.Column(db.String(120), unique=True, nullable=False)
    password_hash = db.Column(db.String(128))
    created_at = db.Column(db.DateTime, default=datetime.utcnow)
    
    # Relación con libros
    books = db.relationship('Book', backref='user', lazy=True, cascade='all, delete-orphan')
    
    def set_password(self, password):
        """Genera y guarda el hash de la contraseña"""
        self.password_hash = generate_password_hash(password)
    
    def check_password(self, password):
        """Verifica si la contraseña es correcta"""
        return check_password_hash(self.password_hash, password)
    
    def __repr__(self):
        return f'<User {self.username}>'

class Book(db.Model):
    """Modelo de Libro para la biblioteca personal"""
    id = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(200), nullable=False)
    author = db.Column(db.String(100), nullable=False)
    genre = db.Column(db.String(50), nullable=False)
    read_date = db.Column(db.Date)
    is_read = db.Column(db.Boolean, default=False, nullable=False)
    rating = db.Column(db.Integer)  # 1-5 estrellas
    comment = db.Column(db.Text)
    added_date = db.Column(db.DateTime, default=datetime.utcnow)
    
    # Clave foránea al usuario
    user_id = db.Column(db.Integer, db.ForeignKey('user.id'), nullable=False)
    
    def __repr__(self):
        return f'<Book {self.title} by {self.author}>'
    
    def to_dict(self):
        """Convierte el libro a diccionario para exportación"""
        return {
            'Título': self.title,
            'Autor': self.author,
            'Género': self.genre,
            'Estado': 'Leído' if self.is_read else 'Por leer',
            'Fecha de lectura': self.read_date.strftime('%Y-%m-%d') if self.read_date else 'N/A',
            'Calificación': f'{self.rating}/5' if self.rating else 'Sin calificar',
            'Comentario': self.comment or 'Sin comentarios',
            'Fecha de registro': self.added_date.strftime('%Y-%m-%d %H:%M')
        }