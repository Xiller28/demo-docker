From ubuntu:latest
RUN apt-get update
RUN apt-get install nginx -y
RUN apt-get install unzip -y
WORKDIR /var/www/html/
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/oxer.zip /var/www/html
RUN unzip oxer.zip
WORKDIR oxer-html
RUN mv * ..
EXPOSE 80
