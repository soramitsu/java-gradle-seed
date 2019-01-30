FROM openjdk:8u181-jre-alpine
MAINTAINER Bohdan Vanieiev <bogdan@soramitsu.co.jp>

# https://spring.io/guides/gs/spring-boot-docker/#_containerize_it
VOLUME /tmp

ARG JAR_FILE
COPY ${JAR_FILE} app.jar

ENV JAVA_OPTIONS ""
ENV JAVA_ESSENTIAL_OPTS "-XX:+UseContainerSupport -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap"
CMD java ${JAVA_OPTIONS} ${JAVA_ESSENTIAL_OPTS} -Djava.security.egd=file:/dev/./urandom -jar /app.jar
