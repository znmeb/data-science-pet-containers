#! /bin/bash

# http://conda.pydata.org/miniconda.html
echo "Making sure $HOME/Downloads/Installers exists."
mkdir -p $HOME/Downloads/Installers
pushd $HOME/Downloads/Installers
echo "Downloading the latest Miniconda3 installer."
wget -q https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh

# go for it!
echo "Removing any old Miniconda3 installation"
rm -fr $HOME/miniconda3
echo "Batch installing Miniconda3"
bash $HOME/Downloads/Installers/Miniconda3-latest-Linux-x86_64.sh -b
rm -f Miniconda3*
popd
echo "Updating base"
. "$HOME/miniconda3/etc/profile.d/conda.sh"
conda activate base
conda update --all --yes
echo "Creating conda 'r-tensorflow' environment"
conda env remove --yes --name r-tensorflow
conda create --yes --name r-tensorflow \
  geopandas \
  ipyparallel \
  jupyter \
  keras \
  matplotlib \
  pandas \
  simplegeneric \
  SymPy \
  tensorflow
conda activate r-tensorflow
conda install pytorch-cpu torchvision-cpu --yes --channel pytorch
ipcluster nbextension enable --user

# R
$HOME/scripts/jupyter.R
