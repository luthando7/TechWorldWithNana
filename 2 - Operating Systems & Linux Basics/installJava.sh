#!/bin/bash

# Check the version of Java
java_version=$(java -version 2>&1 | grep -i version | cut -d'"' -f2 | cut -d'.' -f1,2)
if [ "$java_version" \< "11" ]; then
    echo "Java version is older than 11"
else
    echo "Java version is 11 or newer"
fi

# check if hava is already installed
# if type -p java; then
#   echo "Java is already installed"
#   exit 0
# fi

java_version=$(java -version 2>&1 | grep -i version | cut -d'"' -f2 | cut -d'.' -f1)
if [ "$java_version" == "17" ]; then
    echo "Java version 17 is installed"
else
    # Install Java 17
    echo "Java version 17 is not installed now installing..."
    sudo apt install openjdk-17-jdk
    source ~/.bashrc
fi

java --version
