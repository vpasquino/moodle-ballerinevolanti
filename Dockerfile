FROM docker.io/bitnami/moodle:4.5.1

COPY ./php.ini /opt/bitnami/php/etc/conf.d/php.ini