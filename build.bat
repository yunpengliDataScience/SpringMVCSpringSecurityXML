@echo off

set PROJECT_1=SpringMVCSpringSecurityXML
set PROJECT_2=SpringBoot_Thymeleaf_EssayLibrary
set ARTIFACT_ID=SpringBoot_Thymeleaf_EssayLibrary-Domain
set EXTERNAL_JAR_2=%ARTIFACT_ID%.jar

set MAVEN_HOME=C:\Software\apache-maven-3.8.3
set TOMCAT_HOME=C:\Software\apache-tomcat-9.0.59_2
set PROJECT_DIR=C:\Projects\
set PROJECT_1_DIR=%PROJECT_DIR%\%PROJECT_1%
set PROJECT_2_DIR=%PROJECT_DIR%\%PROJECT_2%


set PATH=%MAVEN_HOME%\bin;%PATH%

cd %PROJECT_2_DIR%
call mvn clean package -DskipTests -P build-jar

call mvn install:install-file -Dfile=%PROJECT_2_DIR%/target/%EXTERNAL_JAR_2% -DgroupId=%ARTIFACT_ID% -DartifactId=%ARTIFACT_ID% -Dversion=1.0 -Dpackaging=jar

cd %PROJECT_1_DIR%
call mvn clean package -DskipTests

rem Stop Tomcat if it's running
rem cd %TOMCAT_HOME%\bin
rem call shutdown.bat

rmdir /s /q %TOMCAT_HOME%\webapps\%PROJECT_1%
rmdir /s /q %TOMCAT_HOME%\webapps\%PROJECT_2%


copy /Y %PROJECT_1_DIR%\target\%PROJECT_1%.war %TOMCAT_HOME%\webapps\
copy /Y %PROJECT_2_DIR%\target\%PROJECT_2%.war %TOMCAT_HOME%\webapps\

rem cd %TOMCAT_HOME%\bin
rem call startup.bat

echo Deployment to Tomcat completed.
cd %PROJECT_1_DIR%
