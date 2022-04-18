FROM ubuntu:20.04

MAINTAINER Testlab

LABEL version="1.1.0" \
      app_name="Training Registration application" \
      release_date="9-Sep-2018"
RUN apt-get update && apt-get install -y apache2 && apt-get clean

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80

COPY index.html /var/www/html
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
