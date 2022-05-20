FROM tomcat:8.5.37-jre8
MAINTAINER ash@gmail.com
RUN apt-get update
ADD https://get.jenkins.io/war-stable/2.303.1/jenkins.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh", "run"]
