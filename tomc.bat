set PATH=%SystemRoot%\system32
set CATALINA_HOME=D:\xampp\tomcat
set stat=netstat -aon |findstr /i "listening" |findstr "8082"
FOR /F "tokens=*" %%i IN (' %stat% ') DO SET stat1=%%i
if "%stat1%" EQU "0" (
     wget.exe --no-check-certificate https://10.112.78.112:8082/repository/Ritu-gitlab1/webapp.war 
     copy webapp.war D:\xampp\tomcat\webapps
     D:\xampp\tomcat\bin\startup.bat 
)
if "%stat1%" NEQ "0" (
     D:\xampp\tomcat\bin\shutdown.bat
	 wget.exe --no-check-certificate https://10.112.78.112:8082/repository/Ritu-gitlab1/webapp.war 
     copy webapp.war D:\xampp\tomcat\webapps
     D:\xampp\tomcat\bin\startup.bat 
)
pause