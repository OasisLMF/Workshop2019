sudo cat apt.txt | xargs apt-get install -y

virtualenv venv
source venv/bin/activate
pip install -r requirements.txt
jupyter nbextension enable --py --sys-prefix qgrid

git clone https://github.com/OasisLMF/gem
cd gem/oasis-test/model_data/GMO
wget http://sunstonerisk.com/files/domrep/footprint.csv.gz
gunzip footprint.csv.gz
cd ../../..