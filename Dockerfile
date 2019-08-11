FROM docker.io/centos:7
RUN yum -y install java java-devel
ADD http://us.mirrors.quenda.co/apache/tomcat/tomcat-8/v8.5.43/bin/apache-tomcat-8.5.43.tar.gz   /opt
WORKDIR /opt
RUN tar -xvf apache-tomcat-8.5.43.tar.gz 
COPY tomcat-users.xml /opt/apache-tomcat-8.5.43/conf/
COPY context.xml /opt/apache-tomcat-8.5.43/webapps/manager/META-INF
EXPOSE 8080
CMD ["/opt/apache-tomcat-8.5.43/bin/catalina.sh","run"]


