FROM centos:7

RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm && \
    yum install -y httpd mod_ssl openssl php70w php70w-mysql

RUN echo "<?php phpinfo(); ?>" > /var/www/html/index.php

COPY index.html /var/www/html/index.html

COPY src /var/www/html/src

COPY config/config-ssl-apache/ssl.conf /etc/httpd/conf.d/default.conf

COPY config/cert/myweb.crt /myweb.crt

COPY config/cert/myweb.key /myweb.key

EXPOSE 443

CMD apachectl -DFOREGROUND
