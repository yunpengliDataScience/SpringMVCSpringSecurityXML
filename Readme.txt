Show session objects:
http://localhost:8080/SpringMVCSpringSecurityXML/

Show hello page:
http://localhost:8080/SpringMVCSpringSecurityXML/hello

Show authentication:
http://localhost:8080/SpringMVCSpringSecurityXML/admin
(jane/12345)
------------------------------------------------------------------------------------------
Demonstrate Spring Session with SpringBoot_Thymeleaf_EssayLibrary project together:

1. Run build.bat to compile and deploy 2 projects.

2. Run H2 DB in server mode (Other applications can share the same H2 DB):
	java -jar h2-1.4.200.jar -webAllowOthers -tcpAllowOthers

3. Start Tomcat.

4. Access applications in Tomcat:

	http://localhost:8080/SpringBoot_Thymeleaf_EssayLibrary/newHomePage
	(jane/12345)
	
	http://localhost:8080/SpringMVCSpringSecurityXML
	
5. Use DBeaver to access H2 database or access H2 console in browser.

Use http://localhost:8082 to access H2 console in browser when H2 DB is running in server mode:

Driver Class: org.h2.Driver
JDBC URL: jdbc:h2:~/data/SpringSessionDB
User Name: sa
Password: sa

Reference:
https://docs.spring.io/spring-security/site/docs/5.3.x/guides/helloworld-xml.html