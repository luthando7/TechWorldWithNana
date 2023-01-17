#!/bin/bash

# install nodejs and npm
sudo apt install nodejs && sudo apt install npm -y

# download the artifact
wget https://node-envvars-artifact.s3.eu-west-2.amazonaws.com/bootcamp-node-envvars-project-1.0.0.tgz -P ./artifact

# Go into the folder of the downloaded file
cd artifact

# unzip the downloaded file
tar -xvzf bootcamp-node-envvars-project-1.0.0.tgz

# changing into the extracted folder
cd package

# set the environment variables
export APP_ENV=dev
export DB_USER=myuser
export DB_PWD=mysecret

# install dependencies
npm install

# run the app
node server.js
