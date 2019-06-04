<img src="https://oasislmf.org/packages/oasis_theme_package/themes/oasis_theme/assets/src/oasis-lmf-colour.png" alt="Oasis LMF logo" width="250"/>

# Oasis Workshop 2019

## Overview
### Model data

The model data used in the exercises is an adapted version of a GEM hazard model for the Dominican Republic. This is based in work by Sunstone Risk, further details ow which can be found [here](http://www.sunstonerisk.com/gem/). In the full implementation different intensity measures are used depending on the risk, but in the workshop version we have a simplified version using PGA only.

### Oasis ecosystem

The Oasis ecosystem is shown in the diiagram below.


There are fourn main 

This workshop will illustrate how the components of the ecosystem fit together.


## Setting up the environment

### Local install (Linux)

The pre-requisites for the system on an Ubuntu based system are listed in apt.txt. These can be installed by running:

```
cat apt.txt | xargs apt-get install -y
```

If using another distribution then the comparable packages will need to be identified and installed, or alternatively use a Docker image.

We recommend using a Python virtual environment for running the excercises. To set up the your virtual environment, run the following commands in the project root directory. Note that Python 3.6 is required for the Oasis MDK.

```
virtualenv -p /usr/bin/python3.6 venv
source venv/bin/activate
pip install -r requirements.txt
jupyter nbextension enable --py --sys-prefix qgrid
pip install ipykernel
ipython kernel install --user --name=OasisWorkshop2018
```

The full model data also needs to be created from smaller files, that are compabable with Git file size restrictions:

```
cat gem/model_data/GMO/footprint_data/* > gem/model_data/footprint.csv
```

Jupyter, which is used for the first two excercises, can be launched by running the following command within the virtualenv:

jupyter notebook  --NotebookApp.token='' --NotebookApp.password='' &
```

## Exercises

#### Running the exercises
The first two exercises are provided either as interactive Jupyter notebooks. Jupyter is an open-source web application that allows you to create and share documents that contain live code, equations, visualizations and narrative text. The other excercies will be ran directlt from the Linux shell.

#### Excercise 1: Exposure data in OED and the Oasis FM.
#### Excercise 2: Running a model in the Oasis MDK.
#### Excercise 3: Running a model in the Oasis API.
#### Excercise 4: Running a model in the Oasis UI.

## Reference ocumentation
### Oasis
* <a href="https://oasislmf.github.io">General Oasis documentation</a>
* <a href="http://localhost:8000/html/docs/oasis_cli.html">Model Development Kit (MDK)</a>
* <a href="https://oasislmf.github.io/docs/oasis_mdk.html">Modules</a>
### Other reference material
* <a href="http://jupyter.org/">Jupyter project</a>
* <a href="https://www.nature.com/news/interactive-notebooks-sharing-the-code-1.16261">Interactive notebooks - sharing the code (Nature article)</a>
* <a href="http://docker.com/">Docker project</a>
* <a href="https://en.wikipedia.org/wiki/R-tree">R-tree spatial indexes</a>

## License
The code in this project is licensed under BSD 3-clause license.
