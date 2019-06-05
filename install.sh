sudo cat apt.txt | xargs apt-get install -y

virtualenv -p /usr/bin/pyjon3.6 venv
source venv/bin/activate
pip install -r requirements.txt

cat gem/model_data/GMO/footprint_data/* > gem/model_data/GMO/footprint.csv
