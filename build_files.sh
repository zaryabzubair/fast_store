echo "virtual environment setup"
python3.9 -m venv venv

echo "activate virtual environment"
source venv/bin/activate

echo "installing dependencies"
pip3.9 install -r requirements.txt

echo "static files"
python3.9 manage.py collectstatic --noinput --clear

echo "migrate"
python3.9 manage.py makemigrations
python3.9 manage.py migrate
