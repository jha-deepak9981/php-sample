FROM centos:latest
RUN yum install httpd -y
EXPOSE 80
COPY index.html /var/www/html
CMD ["httpd", "-D", "FOREGROUND"]
