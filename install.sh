#!/bin/bash
cat apt.txt | xargs sudo apt-get install -y

virtualenv -p python3 venv
source venv/bin/activate
pip install -r requirements.txt

cat gem/model_data/GMO/footprint_data/* > gem/model_data/GMO/footprint.csv
