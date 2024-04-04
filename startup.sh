cd /app
gunicorn --daemon --bind 0.0.0.0:8000 --workers 2 app:app --error-logfile gunicorn.error.log --access-logfile gunicorn.access.log --capture-output --timeout 3600
