#!/bin/bash

if [ ! -f ./mcl ]; then
    wget https://github.com/iTXTech/mirai-console-loader/releases/download/v1.0.5/mcl-1.0.5.zip -O mcl.zip
    unzip mcl.zip
    rm mcl.zip 
    chmod +x ./mcl
    ./mcl --update-package net.mamoe:mirai-api-http --channel stable --dry-run
    ./mcl --dry-run --set-maven-repo https://mirrors.huaweicloud.com/repository/maven/ 
fi

./mcl