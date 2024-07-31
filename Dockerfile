FROM ubuntu:20.04
RUN apt update
RUN apt install openjdk-17-jdk
RUN apt install maven
RUN mvn clean install
WORKDIR /app
COPY . /app
EXPOSE 8079
CMD ["java", "-jar", "target/Demy-0.0.1-SNAPSHOT.war"]
