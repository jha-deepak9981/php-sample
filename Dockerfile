FROM centos:latest
RUN yum install httpd -y
EXPOSE 80
COPY index.html /var/www/html
ADD run-httpd.sh /run-httpd.sh
RUN chmod -v +x /run-httpd.sh

CMD ["/run-httpd.sh"]
