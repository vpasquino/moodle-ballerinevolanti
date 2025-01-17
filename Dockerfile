FROM docker.io/bitnami/moodle:4.3

# COPY theme/beatopaolo/ /bitnami/moodle/theme/beatopaolo/

COPY ./php.ini /opt/bitnami/php/etc/conf.d/php.ini