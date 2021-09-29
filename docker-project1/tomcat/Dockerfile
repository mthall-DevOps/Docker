FROM ubuntu:latest
RUN apt-get -y update && apt-get -y upgrade && apt-get -y install openjdk-8-jdk wget && mkdir /usr/local/tomcat
RUN wget  https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.53/bin/apache-tomcat-9.0.53.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz tomcat.tar.gz
RUN cp -Rv /tmp/apache-tomcat-9.0.53/* /usr/local/tomcat/
ADD https://mani-devops.s3.ap-south-1.amazonaws.com/myweb-8.2.0.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run

