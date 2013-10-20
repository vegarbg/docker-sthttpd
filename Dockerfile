# Minimal sthttpd container

FROM ubuntu
MAINTAINER Andrew Williams <andy@tensixtyone.com>

ADD buildpackage.sh /tmp/
ADD base_www /www
RUN /tmp/buildpackage.sh

EXPOSE 80
CMD ["/usr/local/sbin/thttpd", "-p", "80", "-d", "/www"]