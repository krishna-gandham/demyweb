FROM ubuntu:20.04
WORKDIR /app
COPY . /app
RUN apt update -y
RUN apt install openjdk-11-jdk -y
RUN apt install maven -y
RUN mvn clean install
COPY target/*.war /app/app.war
EXPOSE 8079
CMD ["java" ,"-jar" ,"/app/app.war"]
