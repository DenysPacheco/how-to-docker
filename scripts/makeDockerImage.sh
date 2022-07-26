#!/bin/bash

isDockerfile=`find . -name 'Dockerfile' | wc -l`

if [ $isDockerfile -eq 0 ];then
    echo "!! Dockerfile does not exists!"
    echo "Running makeDockerfile.sh:"
    source makeDockerfile.sh
fi

read -p "Image name: " app
# name of the app

sudo docker build -t ${app} .
sudo docker save -o ${app}.tar ${app}
