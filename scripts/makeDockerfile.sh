#!/bin/bash

read -p "Name of your application: " app
read -p "Project used (python | node | flask): " language
read -p "Source folder: " source
read -p "Main file with extension? " main

language=${language,,}
source=${source%/}
source=${source#*./}

dockerfile=$(cat <<EOF
FROM ${language}:alpine

RUN mkdir -p ${app}/${source}/

WORKDIR ${app}/${source}/

COPY ${source}/ ./

CMD [ "${language}", "${main}" ]
EOF
)

echo "$dockerfile" > Dockerfile
