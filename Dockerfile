COPY index.html /var/www/html
ENTRYPOINT ["httpd", "-D", "FOREGROUND"]
