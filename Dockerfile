FROM registry-scu.cloudtogo.cn/ubuntu:jdk
ARG app
ADD $app spring-boot-demo-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
