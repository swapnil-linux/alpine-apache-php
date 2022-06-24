FROM alpine
RUN apk add php8-apache2 apache2 vim bash curl
RUN rm /var/www/localhost/htdocs/index.html
COPY index.php /var/www/localhost/htdocs/
RUN sed -i 's/Listen 80/Listen 8080/g' /etc/apache2/httpd.conf
EXPOSE 8080
CMD ["/usr/sbin/httpd", "-DFOREGROUND"]


