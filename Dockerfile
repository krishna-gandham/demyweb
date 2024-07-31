FROM openjdk-17-jdk -y
WORKDIR /app
RUN apt install maven -y
RUN mvn clean install
COPY target/*.war /app/app.war
EXPOSE 8079
CMD ["java" ,"-jar" ,"/app/app.war"]
