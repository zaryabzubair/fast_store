echo "virtual environment setup"
python3.12 -m venv venv

echo "activate virtual environment"
source venv/bin/activate

echo "installing dependencies"
pip3.12 install -r requirements.txt

echo "static files"
python3.12 manage.py collectstatic --noinput --clear

echo "migrate"
python3.12 manage.py makemigrations
python3.12 manage.py migrate
