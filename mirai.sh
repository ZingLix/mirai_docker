#!/bin/bash

if [ ! -f ./mcl ]; then
    wget https://github.com/iTXTech/mirai-console-loader/releases/download/v2.1.2/mcl-2.1.2.zip
    unzip mcl-2.1.2.zip
    rm mcl.zip 
    chmod +x ./mcl
    ./mcl --update-package net.mamoe:mirai-api-http --channel stable --dry-run
    ./mcl --dry-run --set-maven-repo https://mirrors.huaweicloud.com/repository/maven/ 
fi

./mcl
