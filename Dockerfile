FROM nginx:1.15.9

COPY default.conf.template /etc/nginx/conf.d/default.conf.template
ADD index.html /usr/share/nginx/html/index.html

CMD /bin/bash -c "envsubst '\$PORT' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf" && nginx -g 'daemon off;'