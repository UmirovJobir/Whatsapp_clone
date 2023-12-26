#!/bin/bash


echo "Apply database migrations"
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:8000 --insecure 

# gunicorn imodels.wsgi:application --bind 0.0.0.0:8000 --timeout 300

# echo "Collect static files"
# python3 manage.py collectstatic


exec "$@"