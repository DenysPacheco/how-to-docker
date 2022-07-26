#!/bin/bash

app=${1}
# name of the app

sudo docker build -t ${app} .
sudo docker save -o ${app}.tar ${app}
