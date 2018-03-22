# Origin repo : https://github.com/CHYbeta/Code-Audit-Challenges
# usage : `docker build -t custom_image_name .` (DONT FORGET THE DOT)
#         `docker run -id --name Your_app_name -p OUTSIDE_PORT:80 -m 'MEMORY_LIMIT eg:1g、500m' 'custom_image_name' /run.sh`

FROM ubuntu:14.04
MAINTAINER Pr0ph3t <1415314884@qq.com>

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN apt-get update
RUN apt-get install -y php5 php5-dev php-pear autoconf automake curl libcurl3-openssl-dev build-essential libxslt1-dev re2c libxml2 libxml2-dev php5-cli bison libbz2-dev libreadline-dev libfreetype6 libfreetype6-dev libpng12-0 libpng12-dev libjpeg-dev libjpeg8-dev libjpeg8  libgd-dev libgd3 libxpm4 libltdl7 libltdl-dev libssl-dev openssl gettext libgettextpo-dev libgettextpo0 libicu-dev libmhash-dev libmhash2 libmcrypt-dev libmcrypt4 apache2-dev

RUN curl -L -O https://github.com/phpbrew/phpbrew/raw/master/phpbrew
RUN chmod +x phpbrew
RUN mv phpbrew /bin/
RUN phpbrew init
RUN phpbrew install 5.4.30 +apxs2

RUN rm /var/www/html/index.html

# Add file
ADD index.php /var/www/html/
ADD run.sh /
RUN chmod +x /run.sh

EXPOSE 80
CMD ["bash -x /run.sh"]