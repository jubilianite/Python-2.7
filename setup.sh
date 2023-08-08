#!/bin/bash

# Install Python 2.7
wget https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tgz
tar -xvf Python-2.7.18.tgz
cd Python-2.7.18
./configure
make
sudo make install
cd ..

python2 ./get-pip.py
python2 -m pip install --upgrade setuptools

export PATH=$PATH:/home/kali/.local/bin/

echo "Updated path to: $PATH"

# Check Python 2.7 version
python2 --version

# Check pip version for Python 2.7
python2 -m pip --version
