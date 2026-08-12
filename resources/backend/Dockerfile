# 阶段 1：使用 JDK 生成极简 Custom JRE (仅约 45MB)
FROM eclipse-temurin:17-jdk-alpine AS jre-builder
RUN jlink \
    --add-modules java.base,java.logging,java.xml,java.naming,java.sql,java.management,java.net.http,java.scripting,java.security.jgss,java.instrument,jdk.unsupported,jdk.management \
    --strip-debug \
    --no-man-pages \
    --no-header-files \
    --compress=2 \
    --output /custom-jre

# 阶段 2：极致瘦身运行镜像 (基于极简 Alpine + Custom JRE)
FROM alpine:3.19
WORKDIR /application

# 复制定制的极简 JRE
ENV JAVA_HOME=/opt/jre
ENV PATH="${JAVA_HOME}/bin:${PATH}"
COPY --from=jre-builder /custom-jre $JAVA_HOME

ARG JAR_FILE
COPY ${JAR_FILE} app.jar

# 内存 GC 与 Nacos 60s 超时优化
ENV JAVA_OPTS="-Xmx256m -Xms128m -XX:+UseSerialGC -Dcom.alibaba.nacos.client.naming.ctimeout=60000 -Dcom.alibaba.nacos.client.config.ctimeout=60000"

ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar app.jar"]
