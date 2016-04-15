#!/bin/sh

# This script has to be launched
# at root level of cloned github repository (branch: stable)
su taiga
cd /home/taiga/taiga-back

# Create a virtualenv with all needed python dependencies
virtualenv -p /usr/bin/python3.4 venv
source venv/bin/activate
pip install -r requirements.txt

# Populate the database with initial basic data
# This creates a new user admin with password 123123
python manage.py migrate --noinput
python manage.py loaddata initial_user
python manage.py loaddata initial_project_templates
python manage.py loaddata initial_role
python manage.py compilemessages
python manage.py collectstatic --noinput

# If you want some example data, you can execute the following command, which populates the database with sample projects and random data; useful for demos:
python manage.py sample_data