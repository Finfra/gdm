#!/bin/bash


apt-get clean && apt-get update && apt-get install -y \
    locales \
    language-pack-fi  \
    language-pack-en && \
    export LANGUAGE=en_US.UTF-8 && \
    export LANG=en_US.UTF-8 && \
    export LC_ALL=en_US.UTF-8 && \
    locale-gen en_US.UTF-8 && \
    dpkg-reconfigure locales
apt install -y git

pip install keras
pip install pandas
pip install h5py
pip install matplotlib
pip install seaborn



cd /notebooks
git clone https://github.com/Finfra/TensorflowStudyExample.git
