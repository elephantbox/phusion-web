ARG PHP_NODE_BASEIMAGE=elephantbox/phusion-php-node:latest

FROM $PHP_NODE_BASEIMAGE

EXPOSE 80

RUN install_clean nginx

COPY ./ /

ENTRYPOINT ["entrypoint"]

CMD ["run-services", "nginx,php-fpm"]
