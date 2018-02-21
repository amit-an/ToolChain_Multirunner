
# **Sample Project** 
code is pushed to gitlab repository after that the gitlab server having two different runner first on windows machine and the second on Linux machine and both runner having shell as an executor . The runner will read the YML file and perform the CI/CD Pipeline.

# **Gitlab CI-CD Pipeline:**

 A pipeline is a group of jobs that get executed in stages(batches). All of the jobs in a stage are executed in parallel (if there are enough concurrent Runners), 
  and if they all succeed, the pipeline moves on to the next stage. If one of the jobs fails, the next stage is not (usually) executed. 


## **GitLab Runner** : 

To perform the actual build, need to install GitLab Runner which is written in Go.
It can run on any platform for which you can build Go binaries, including Linux, OSX, Windows, FreeBSD and Docker.
It can test any programming language including .Net, Java, Python, C, PHP and others.

Requirements :

- Gitlab Server installed on the Linux machine, Runner is registered with gitlab server . Runner is congfigured as Shell Exeuctor.
- Sonar Server for static analysis of code.
- Nexus Server for For the artifact.
- Tomcat Server for deployment.


Available Variables are listed below

sonar_url: sonar server ip address
sonar_username: admin   
sonar_password: admin

### Built With
 Ant  - Build.xml  
 
## Flow of the Pipeline

![Capture](/uploads/51001392418bc38f10012f8f8634a6b1/Capture.PNG)

Web application: http://webapp/login.html

## Run application locally
See Wiki:  http://10.112.78.16/Ritu/ToolChain/wikis/home 


## Continuous integration
[![pipeline status](http://10.112.78.16/Ritu/ToolChain/badges/master/pipeline.svg)](http://10.112.78.16/Ritu/ToolChain/commits/master)`


## Author Information
This pipeline  was created in 2018 by ERS-DEVOPS COE                             
                                
Sample Project 
Runner  -  Linux Runner 10.112.78.16 machine  as shell executor
        -  Window Runner as shell executor 

Build       -   using Ant
Test        -   Sonar Analysis http://10.112.78.96:9000
Aritifact   -   Nexus  https://10.112.78.112:8082
Deployment  -   Tomcat Server   1. Linux  -- http://10.112.78.16:8081
                                2. Window -- http://10.112.78.16:8082
