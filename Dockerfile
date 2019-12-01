FROM ububtu:16.04
FROM openjdk:8


ENV JAR_NAME demo-0.0.1-SNAPSHOT.jar

RUN apt-get update

COPY . /usr/src/app/build
WORKDIR /usr/src/app/build
RUN ./gradlew clean build
COPY ./build/libs/$JAR_NAME /usr/src/app
COPY ./docker-entrypoint.sh /usr/src/app

WORKDIR /usr/src/app
RUN rm -rf build

CMD ./docker-entrypoint.sh
EXPOSE 8080
