FROM daocloud.io/library/nginx:1.16.0-alpine-perl
MAINTAINER shunwu2019 "shunwu2001@163.com"

COPY ./dist/ /usr/share/nginx/html/
RUN rm /etc/nginx/conf.d/*
COPY ./vhost.nginx.conf /etc/nginx/conf.d/try-vue.conf

EXPOSE 80

ENTRYPOINT ["nginx","-g","daemon off;"]