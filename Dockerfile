FROM centos/systemd 
LABEL maintainer="krhee@synamedia.com" Vendor="Synamedia" \
Description="Centos/systemd" Version="1.0"
RUN yum -y install httpd; yum clean all; systemctl enable httpd.service
RUN ln -sf /dev/stdout /var/log/httpd/access_log \
    && ln -sf /dev/stderr /var/log/httpd/error_log
EXPOSE 80
CMD ["/usr/sbin/init"]
