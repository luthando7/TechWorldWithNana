#!/bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # no color

# install nodejs and npm
echo -e "${GREEN}>Installing nodejs and npm...${NC}"
sudo apt install nodejs && sudo apt install npm -y

# download the artifact
echo -e "${GREEN}>Downloading the artifact and saving it in the folder called artifact...${NC}"
wget https://node-envvars-artifact.s3.eu-west-2.amazonaws.com/bootcamp-node-envvars-project-1.0.0.tgz -P ./artifact

# Go into the folder of the downloaded file
echo -e "${GREEN}>changing into the folder called artifact${NC}"
cd artifact

# unzip the downloaded file
echo -e "${GREEN}>Extracting all the files in artifact${NC}"
tar -xvzf bootcamp-node-envvars-project-1.0.0.tgz

# changing into the extracted folder
echo -e "${GREEN}>Changing into the extracted package..${NC}"
cd package

# set the environment variables
echo -e "${GREEN}>Setting the environment variables...${NC}"
export APP_ENV=dev
export DB_USER=myuser
export DB_PWD=mysecret

# install dependencies
echo -e "${GREEN}>Installing the depencies${NC}"
npm install

# run the app
echo -e "${GREEN}>Starting the app ...${NC}"
node server.js &

# show app is running
echo -e "${GREEN}>Showing that the app is running...${NC}"
ps aux | grep node | grep -v grep

# sho that app is running on port 3000
echo -e "${GREEN}>Showing that the app is running on port 3000...${NC}"
netstat -ltnp | grep :3000

