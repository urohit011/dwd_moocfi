FROM openjdk:15-slim-buster

WORKDIR /spring_example

COPY . .

EXPOSE 8080

RUN chmod u+x mvnw

RUN ./mvnw package

CMD java -jar ./target/docker-example-1.1.3.jar
