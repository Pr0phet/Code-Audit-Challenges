# Origin repo : https://github.com/CHYbeta/Code-Audit-Challenges
# usage : `docker build -t custom_image_name .` (DONT FORGET THE DOT)
#         `docker run -id --name Your_app_name -p OUTSIDE_PORT:80 -m 'MEMORY_LIMIT eg:1g、500m' 'custom_image_name' /run.sh`

FROM ubuntu:14.04
MAINTAINER Pr0ph3t <1415314884@qq.com>

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN apt-get update && apt-get install -y php5 apache2 libapache2-mod-php5

RUN rm /var/www/html/index.html

# Add file
ADD index.php /var/www/html/
ADD run.sh /
RUN chmod +x /run.sh

EXPOSE 80
CMD ["bash -x /run.sh"]