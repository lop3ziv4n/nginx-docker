FROM nginx

#Enviroment variable
ENV NGINX_TEMPLATE nginx

RUN mkdir -p /etc/nginx/templates.d
# Add files required to build this image
COPY ./config/*.template /etc/nginx/templates.d/

RUN rm /etc/nginx/conf.d/default.conf

CMD ["/bin/bash", "-c", "envsubst < /etc/nginx/templates.d/${NGINX_TEMPLATE}.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]