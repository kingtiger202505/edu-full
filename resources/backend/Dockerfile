FROM eclipse-temurin:17-jre-alpine
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
ENV JAVA_OPTS="-Xmx256m -Xms128m -Dcom.alibaba.nacos.client.naming.ctimeout=60000 -Dcom.alibaba.nacos.client.config.ctimeout=60000"
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar /app.jar"]
