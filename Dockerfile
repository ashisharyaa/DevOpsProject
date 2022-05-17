FROM ubuntu:latest
MAINTAINER ashish@gmail.com
RUN apt install apache2 -y \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page276/diigo.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip diigo.zip
RUN cp -rvf diigo/* .
RUN rm -rf diigo diigo.zip
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
EXPOSE 80
