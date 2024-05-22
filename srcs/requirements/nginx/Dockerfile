FROM alpine:3.18

RUN apk update && apk upgrade && apk add --no-cache nginx openssl

# COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY ./conf/default.conf /etc/nginx/conf.d/default.conf

COPY ./tools/index.html /usr/share/nginx/html/index.html

COPY ./conf/ssl/rmarquar.42.fr.crt /etc/ssl/certs/nginx.crt
COPY ./conf/ssl/rmarquar.42.fr.key /etc/ssl/private/nginx.key

EXPOSE 443


CMD ["nginx", "-g", "daemon off;"]

LABEL maintainer="Robin rmarquar@student.42heilbronn.de"
