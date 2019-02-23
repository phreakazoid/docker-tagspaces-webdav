FROM ubuntu:trusty
ENV TAGSPACES_VERSION 3.1.0
RUN apt-get update && apt-get install -y nginx nginx-extras apache2-utils && apt-get install -y wget unzip

VOLUME /var/dav
EXPOSE 80
COPY webdav.conf /etc/nginx/conf.d/default.conf
RUN rm /etc/nginx/sites-enabled/*

COPY entrypoint.sh /
RUN chmod +x entrypoint.sh \
 && wget https://github.com/tagspaces/tagspaces/releases/download/v${TAGSPACES_VERSION}/tagspaces-web.zip \
 && unzip tagspaces-web.zip \
 && mkdir /usr/share/nginx/www \
 && mv web /usr/share/nginx/www/tagspaces \
 && rm -rf tagspaces-web.zip
CMD nginx -g "daemon off;"
