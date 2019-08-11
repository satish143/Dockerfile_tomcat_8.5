# Dockerfile_tomcat_8.5

# Docker container: CentOS 7 + Java 8 + Tomcat 8.5
# Build the image
  git clone 
  cd Dockerfile_tomcat_8.5
  docker build -t centos_tomcat .

# How to use
# run the following command.
 docker run -v /opt/tomcat/webapps:/opt/tomcat/webapps -p 8080:8080 -dt --name tomcat centos_tomcat
