# 阶段 1：使用 JDK 生成极简 Custom JRE (仅约 45MB)
FROM eclipse-temurin:17-jdk-alpine AS jre-builder
RUN jlink \
    --add-modules java.base,java.logging,java.xml,java.naming,java.sql,java.management,java.net.http,java.scripting,java.security.jgss,java.instrument,jdk.unsupported,jdk.management \
    --strip-debug \
    --no-man-pages \
    --no-header-files \
    --compress=2 \
    --output /custom-jre

# 阶段 2：利用 layertools 提取分层依赖
FROM eclipse-temurin:17-jre-alpine AS extractor
WORKDIR /builder
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
RUN java -Djarmode=layertools -jar app.jar extract

# 阶段 3：终极极致瘦身镜像 (基于极简 Alpine + Custom JRE + Spring Layertools)
FROM alpine:3.19
WORKDIR /application

# 复制定制的极简 JRE
ENV JAVA_HOME=/opt/jre
ENV PATH="${JAVA_HOME}/bin:${PATH}"
COPY --from=jre-builder /custom-jre $JAVA_HOME

# 复制分层依赖（最大化利用 Docker 缓存）
COPY --from=extractor /builder/dependencies/ ./
COPY --from=extractor /builder/spring-boot-loader/ ./
COPY --from=extractor /builder/snapshot-dependencies/ ./
COPY --from=extractor /builder/application/ ./

# 内存 GC 与 Nacos 60s 超时优化
ENV JAVA_OPTS="-Xmx256m -Xms128m -XX:+UseSerialGC -Dcom.alibaba.nacos.client.naming.ctimeout=60000 -Dcom.alibaba.nacos.client.config.ctimeout=60000"

ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS org.springframework.boot.loader.launch.JarLauncher"]
