FROM 	centos:centos7
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.97/bin/apache-tomcat-8.5.97.tar.gz
RUN   tar -xvzf apache-tomcat-8.5.97.tar.gz -C /opt 
RUN yum install java-11 -y 
WORKDIR /opt/apache-tomcat-8.5.97
COPY ./student.war /opt/apache-tomcat-8.5.97/webapps/
COPY ./context.xml /opt/apache-tomcat-8.5.97/conf/
COPY ./mysql-connector.jar /opt/apache-tomcat-8.5.97/lib/
EXPOSE 8080
 
CMD ./bin/catalina.sh run 
