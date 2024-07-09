echo "virtual environment setup"
python -m venv venv

echo "activate virtual environment"
source venv/bin/activate

echo "installing dependencies"
pip install -r requirements.txt

echo "static files"
python manage.py collectstatic --noinput --clear

echo "migrate"
python manage.py makemigrations
python manage.py migrate
