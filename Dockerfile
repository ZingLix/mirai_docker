FROM openjdk:12-alpine
WORKDIR /mirai
ADD mirai.sh /
RUN chmod +x /mirai.sh
CMD ["sh", "/mirai.sh"]