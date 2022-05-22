FROM ubuntu:latest
MAINTAINER ashish@gmail.com
RUN apt-get update && \
    apt-get install -y apache2 && \
    zip && \
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page275/roxy.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip roxy.zip
RUN cp -rvf roxy/* .
RUN rm -rf roxy roxy.zip
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
