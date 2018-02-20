code is pushed to gitlab repository after that the gitlab server having two different runner first on windows machine and the second on Linux machine and both runner having shell as an executor . The runner will read the YML file and perform the CI/CD Pipeline.

Sample Project 
Runner  -  Linux Runner 10.112.78.16 machine  as shell executor
        -  Window Runner as shell executor 

Build       -   using Ant
Test        -   Sonar Analysis http://10.112.78.96:9000
Aritifact   -   Nexus  https://10.112.78.112:8082
Deployment  -   Tomcat Server   1. Linux  -- http://10.112.78.16:8081
                                2. Window -- http://10.112.78.16:8082
