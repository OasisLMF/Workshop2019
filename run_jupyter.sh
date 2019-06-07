#!/bin/bash

PASSWORD=""
mkdir $HOME/.jupyter
echo '{"NotebookApp": {"password":"'$PASSWORD'", "token":"", "base_url": "/jupyter"}}' > $HOME/.jupyter/jupyter_notebook_config.json

. venv/bin/activate
jupyter notebook --port=8888 --allow-root --no-browser --ip=0.0.0.0
