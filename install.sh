sudo cat apt.txt | xargs apt-get install -y

virtualenv -p /usr/bin/pyjon3.6 venv
source venv/bin/activate
pip install -r requirements.txt
sudo jupyter nbextension enable --py --sys-prefix qgrid
source venv/bin/deactivate

cat gem/model_data/GMO/footprint_data/* > gem/model_data/footprint.csv