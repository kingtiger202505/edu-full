FROM eclipse-temurin:17-jre-alpine
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
ENV JAVA_OPTS="-Xmx256m -Xms128m"
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar /app.jar"]
