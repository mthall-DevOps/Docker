FROM centos:7
RUN yum install -y httpd
WORKDIR /etc/httpd/conf.d
COPY proxy.conf .
ADD https://mani-devops.s3.ap-south-1.amazonaws.com/index.html /var/www/html/
RUN chmod 777 /var/www/html/index.html
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]


