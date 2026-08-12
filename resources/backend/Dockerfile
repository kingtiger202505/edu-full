# 阶段 1：利用 layertools 提取分层依赖
FROM eclipse-temurin:17-jre-alpine AS extractor
WORKDIR /builder
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
RUN java -Djarmode=layertools -jar app.jar extract

# 阶段 2：构建分层运行镜像（最大化利用 Docker 缓存）
FROM eclipse-temurin:17-jre-alpine
WORKDIR /application

# 复制分层（依赖变动频率从低到高排列）
COPY --from=extractor /builder/dependencies/ ./
COPY --from=extractor /builder/spring-boot-loader/ ./
COPY --from=extractor /builder/snapshot-dependencies/ ./
COPY --from=extractor /builder/application/ ./

# 优化内存与 GC 策略，提升低内存机器运行稳定性
ENV JAVA_OPTS="-Xmx256m -Xms128m -XX:+UseSerialGC -Dcom.alibaba.nacos.client.naming.ctimeout=60000 -Dcom.alibaba.nacos.client.config.ctimeout=60000"

ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS org.springframework.boot.loader.launch.JarLauncher"]
