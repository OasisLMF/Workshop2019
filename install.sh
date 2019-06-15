#!/bin/bash
# cat apt.txt | xargs sudo apt-get install -y
virtualenv -p /usr/bin/python3.6 venv
source venv/bin/activate
pip install -r requirements.txt
pip install ipykernel
ipython kernel install --user --name=OasisWorkshop2018
cat gem/model_data/GMO/footprint_data/* > gem/model_data/GMO/footprint.csv
jupyter notebook  --NotebookApp.token='' --NotebookApp.password='' --no-browser --port=8888 --ip=0.0.0.0 --NotebookApp.base_url=/jupyter --allow-root
docker-compose -f ./gem/docker-compose.oasis_ui.yml -f ./gem/docker-compose.yml up -d
