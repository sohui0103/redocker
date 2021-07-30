#!/bin/bash

python manage.py makemigrations

python manage.py migrate

python manage.py collectstatic

gunicorn blogproject.wsgi -b 0.0.0.0:8000