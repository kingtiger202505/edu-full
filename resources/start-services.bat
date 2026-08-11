@echo off
title roncoo-education 4 services

echo ============================================================
echo   Starting 4 Java Services in Single Window
echo ============================================================
echo.

set "ROOT=D:\ai\code\roncoo-education-full"
set MAVEN_OPTS=-Xmx256m -Xms128m

if exist "D:\Java\jdk17" (
    set "JAVA_HOME=D:\Java\jdk17"
    set "PATH=D:\Java\jdk17\bin;%PATH%"
)

set "LOCAL_REPO=%USERPROFILE%\.m2\repository\com\roncoo\roncoo-education-common-core\26.0.0-RELEASE\roncoo-education-common-core-26.0.0-RELEASE.jar"

if not exist "%LOCAL_REPO%" (
    echo [0/4] Common modules missing in local repo. Installing once...
    cd /d "%ROOT%\roncoo-education"
    call mvn clean install -DskipTests -Dmaven.javadoc.skip=true
    if errorlevel 1 (
        echo [ERROR] Maven install failed!
        pause
        exit /b 1
    )
) else (
    echo [0/4] Common modules already installed in local repo. Skipping build...
)

echo.
echo [1/4] Starting Gateway Service...
start "" /B /D "%ROOT%\roncoo-education\roncoo-education-gateway" cmd /c mvn spring-boot:run
timeout /t 5 >nul

echo [2/4] Starting System Service...
start "" /B /D "%ROOT%\roncoo-education\roncoo-education-service\roncoo-education-service-system" cmd /c mvn spring-boot:run
timeout /t 5 >nul

echo [3/4] Starting User Service...
start "" /B /D "%ROOT%\roncoo-education\roncoo-education-service\roncoo-education-service-user" cmd /c mvn spring-boot:run
timeout /t 5 >nul

echo [4/4] Starting Course Service...
start "" /B /D "%ROOT%\roncoo-education\roncoo-education-service\roncoo-education-service-course" cmd /c mvn spring-boot:run

echo.
echo ============================================================
echo All 4 services running in background of this window.
echo Press Ctrl+C or close window to stop.
echo ============================================================
pause
