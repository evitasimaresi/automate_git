#!/bin/bash

# Updates
: '
sudo apt update 
# only run if needed
sudo apt upgrade -y 
sudo apt install python3-pip
sudo pip install virtualenv
'
# ./setup.sh 

# Name of virtual environment
ENV_NAME=$1 
PATH_ENV=/home/evitasima/venv
mkdir -p $PATH_ENV 
# cd $PATH_ENV

# copy clean python to another virtual env to work on
virtualenv -p /usr/bin/python3 $PATH_ENV/$ENV_NAME
# activate command
source $PATH_ENV/$ENV_NAME/bin/activate

cd $2
# install again the packages listed in the requirements.txt
pip install -r requirements.txt

# how to exit the env and go back the original python? 
# deactivate
