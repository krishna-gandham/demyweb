FROM ubuntu:20.04
WORKDIR /app
COPY . /app 
COPY target/*.war /app/app.war
EXPOSE 8079
CMD ["java" ,"-jar" ,"target/Demy-0.0.1-SNAPSHOT.war"]
