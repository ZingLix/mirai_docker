FROM openjdk:12-alpine
WORKDIR /mirai
RUN wget https://github.com/iTXTech/mirai-console-loader/releases/download/v1.0.5/mcl-1.0.5.zip -O mcl.zip
RUN unzip mcl.zip
RUN chmod +x mcl && \
    ./mcl --update-package net.mamoe:mirai-api-http --channel stable --dry-run && \
    ./mcl --dry-run --set-maven-repo https://mirrors.huaweicloud.com/repository/maven/ 
RUN rm mcl.zip
CMD ["./mcl"]