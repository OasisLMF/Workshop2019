#!/bin/bash

PASSWORD=""
mkdir $HOME/.jupyter
echo '{"NotebookApp": {"password":"'$PASSWORD'", "token":""}}' > $HOME/.jupyter/jupyter_notebook_config.json

. venv/bin/activate
jupyter notebook --port=8888 --allow-root --no-browser --ip=0.0.0.0
