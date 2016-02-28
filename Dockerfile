FROM java:8
VOLUME /tmp
EXPOSE 8080
# Path to jar created by gradle build
ADD build/libs/docker-test-0.1.0.jar app.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]