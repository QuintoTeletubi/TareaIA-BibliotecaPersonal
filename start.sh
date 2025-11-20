#!/bin/bash
echo "🚀 Iniciando aplicación con gunicorn personalizado..."
exec gunicorn app:app -b 0.0.0.0:$PORT --workers 4