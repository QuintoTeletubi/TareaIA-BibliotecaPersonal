# Vercel entry point
from app import app

# Vercel necesita que la app se llame 'app'
if __name__ == "__main__":
    app.run()