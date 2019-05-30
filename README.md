<img src="https://oasislmf.org/packages/oasis_theme_package/themes/oasis_theme/assets/src/oasis-lmf-colour.png" alt="Oasis LMF logo" width="250"/>

# Oasis Workshop 2019

Workshop material for 2019 conferences.

## Model data

The model data is an adapted version of a GEM hazard model for the Dominican Republic. This was adapted for use by the insurance industry and ported to the Oasis model format by Sunstone Risk. Further details can be found [here](http://www.sunstonerisk.com/gem/).

## Setting up the environment

### Local install (Linux)

The pre-requisites for the system on an Ubuntu based system are listed in apt.txt. These can be installed by running:

```
cat apt.txt | xargs apt-get install -y
```
If using another distribution then the comparable packages will need to be identified and installed, or alternatively use a Docker image.

We recommend using a Python virtual environment for running the excercises. To set up the your virtual environment, run the following commands in the project root directory:

```http://www.catrisks.com/
virtualenv venv
source venv/bin/activate
pip install -r requirements.txt
jupyter nbextension enable --py --sys-prefix qgrid
# Temporary requirement to use new lookup framework in the development version of the oasislmf package
pip install --force-reinstall --upgrade git+https://github.com/OasisLMF/OasisLMF.git@master#egg=oasislmf

pip install ipykernel
ipython kernel install --user --name=ZurichWorkshop2018
```

## Exercises

#### Running the exercises
The exercises are provided as interactive Jupyter notebooks. Jupyter is an open-source web application that allows you to create and share documents that contain live code, equations, visualizations and narrative text. To launch Jupyter, run the following command which will start Jupyter and open the home page in a browser window. You can then navigate to the relevant workbook.

```
jupyter notebook  --NotebookApp.token='' --NotebookApp.password=''
```

#### Excercise 1: Exposure data in OED and the Oasis FM.
#### Excercise 2: Running a model in the Oasis MDK.
#### Excercise 3: Running a model in the Oasis API.
#### Excercise 4: Running a model in the Oasis UI.

## Documentation
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
