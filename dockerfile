FROM openjdk:11

#RUN addgroup -S notes && adduser -S notes -G notes

RUN addgroup --system notes && adduser --system --ingroup notes notes

USER notes:notes

ARG JAR_FILE=*.jar

COPY ${JAR_FILE} easy-note.jar

COPY application.properties application.properties

ENTRYPOINT ["java", "-jar", "/easy-note.jar"]