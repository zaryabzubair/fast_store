echo "virtual environment setup"
python3.9 -m venv venv

echo "activate virtual environment"
source venv/bin/activate

echo "installing dependencies"
pip install -r requirements.txt

echo "static files"
python3.9 manage.py collectstatic --noinput --clear

echo "Migration"
python3.9 manage.py makemigrations
python3.9 manage.py migrate
