FROM openjdk:8

ENV JAR_NAME demo-0.0.1-SNAPSHOT.jar

COPY . /usr/src/app/build
WORKDIR /usr/src/app/build
RUN ./gradlew clean build

RUN cp ./build/libs/$JAR_NAME /usr/src/app

WORKDIR /usr/src/app
RUN rm -rf build
CMD nohup java -jar $JAR_NAME &

EXPOSE 8080
