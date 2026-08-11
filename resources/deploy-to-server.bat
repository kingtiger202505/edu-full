@echo off
chcp 65001 >nul
title 领课教育 - 一键本地编译打包并同步部署到Linux服务器

echo ============================================================
echo      领课教育 - 一键本地打包并部署到 Linux 服务器
echo ============================================================
echo.

:: 设置服务器配置（请修改为你的服务器 IP 和登录用户）
set SERVER_IP=127.0.0.1
set SERVER_USER=root
set REMOTE_DIR=/data/app

set "ROOT=%~dp0.."

if exist "D:\Java\jdk17" (
    set "JAVA_HOME=D:\Java\jdk17"
    set "PATH=D:\Java\jdk17\bin;%PATH%"
)

echo [1/4] 编译 Java 微服务 (4个后端服务)...
cd /d "%ROOT%\roncoo-education"
call mvn clean package -DskipTests -Dmaven.javadoc.skip=true
if errorlevel 1 (
    echo [错误] Java 编译失败！
    pause
    exit /b 1
)

mkdir "%ROOT%\resources\backend\target" 2>nul
copy /y "%ROOT%\roncoo-education\roncoo-education-gateway\target\gateway.jar" "%ROOT%\resources\backend\target\"
copy /y "%ROOT%\roncoo-education\roncoo-education-service\roncoo-education-service-system\target\system.jar" "%ROOT%\resources\backend\target\"
copy /y "%ROOT%\roncoo-education\roncoo-education-service\roncoo-education-service-user\target\user.jar" "%ROOT%\resources\backend\target\"
copy /y "%ROOT%\roncoo-education\roncoo-education-service\roncoo-education-service-course\target\course.jar" "%ROOT%\resources\backend\target\"

echo.
echo [2/4] 编译前端项目 (Admin 后台 + PC 门户)...
cd /d "%ROOT%\roncoo-education-admin"
call npm run build

cd /d "%ROOT%\roncoo-education-web"
call npx nuxi generate

mkdir "%ROOT%\resources\frontend\dist\admin" 2>nul
mkdir "%ROOT%\resources\frontend\dist\web" 2>nul
xcopy /s /e /y "%ROOT%\roncoo-education-admin\dist\*" "%ROOT%\resources\frontend\dist\admin\"
xcopy /s /e /y "%ROOT%\roncoo-education-web\.output\public\*" "%ROOT%\resources\frontend\dist\web\"

echo.
echo [3/4] 正在通过 SCP 将 resources 部署目录同步上传至服务器 (%SERVER_USER%@%SERVER_IP%:%REMOTE_DIR%)...
scp -r "%ROOT%\resources" %SERVER_USER%@%SERVER_IP%:%REMOTE_DIR%/

if errorlevel 1 (
    echo [错误] SCP 上传失败，请检查服务器 IP、SSH 密钥或密码！
    pause
    exit /b 1
)

echo.
echo [4/4] 远程执行 Docker Compose 启动容器集群...
ssh %SERVER_USER%@%SERVER_IP% "cd %REMOTE_DIR%/resources/backend && docker compose up -d --build && cd ../frontend && docker compose up -d"

echo.
echo ============================================================
echo                  恭喜！一键部署完成！
echo ============================================================
pause
