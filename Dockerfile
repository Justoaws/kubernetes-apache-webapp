FROM fedora

LABEL description="here my first Dockerfile"
LABEL maintainer="Justin Mebodo"

RUN yum -y update
RUN yum -y install httpd

COPY index.html /var/www/html

EXPOSE 80

ENTRYPOINT [ "/usr/sbin/httpd"]

CMD ["-D", "FOREGROUND"]
