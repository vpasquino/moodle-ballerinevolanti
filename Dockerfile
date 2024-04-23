FROM docker.io/bitnami/moodle:4.3

COPY ./php.ini /opt/bitnami/php/etc/conf.d/php.ini