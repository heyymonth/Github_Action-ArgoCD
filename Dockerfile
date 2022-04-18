FROM busybox:latest

MAINTAINER Testlab

LABEL version="1.1.0" \
      app_name="Training Registration application" \
      release_date="9-Sep-2018"
RUN echo "Test docker images"

EXPOSE 80

COPY index.html /var/www/html
