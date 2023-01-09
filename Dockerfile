FROM openjdk:11

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} week_9_Assignment.jar

ENTRYPOINT ["java","-jar","/week_9_assignment.jar"]

EXPOSE 8080
