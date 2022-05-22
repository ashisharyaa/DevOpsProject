FROM ubuntu:latest
MAINTAINER ashish@gmail.com
RUN apt-get update && \
    apt-get install -y apache2 && \
    zip && \
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page276/diigo.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip diigo.zip
RUN cp -rvf diigo/* .
RUN rm -rf diigo diigo.zip
CMD ["/bin/sh", "-D", "FOREGROUND"]
EXPOSE 80
