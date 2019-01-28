FROM openjdk:8u181-jre-alpine
MAINTAINER Bohdan Vanieiev <bogdan@soramitsu.co.jp>

ARG JAR_FILE
COPY ${JAR_FILE} app.jar

ENV JAVA_OPTIONS "-XX:+UseContainerSupport -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap"
CMD java ${JAVA_OPTIONS} -Djava.security.egd=file:/dev/./urandom -jar /app.jar
