sudo cat apt.txt | xargs apt-get install -y

virtualenv -p /usr/bin/pyjon3.6 venv
source venv/bin/activate
pip install -r requirements.txt
sudo jupyter nbextension enable --py --sys-prefix qgrid
source venv/bin/deactivate

git clone https://github.com/OasisLMF/gem
cd gem/oasis-test/model_data/GMO
wget http://sunstonerisk.com/files/domrep/footprint.csv.gz
gunzip footprint.csv.gz
cd ../../..