FROM centos:7
RUN yum install httpd -y
EXPOSE 80
COPY index.html /var/www/html
RUN rm -rf /var/run/httpd/* /run/httpd/* /tmp/httpd*
CMD ["httpd", "-D", "FOREGROUND"]
