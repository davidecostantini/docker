FROM ubuntu
RUN apt-get update -y && apt-get clean
RUN apt-get install -y apache2 php5 libapache2-mod-php5 php5-mcrypt php5-cli php5-curl
RUN php -r "readfile('https://getcomposer.org/installer');" | php
EXPOSE 80
COPY apache2.conf /etc/apache2/
COPY php.ini /etc/php5/apache2/php.ini
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D"]
CMD ["FOREGROUND"]