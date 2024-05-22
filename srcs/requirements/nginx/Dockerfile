FROM alpine:3.18

RUN apk update && apk upgrade && apk add --no-cache nginx openssl


COPY ./conf/default.conf /etc/nginx/nginx.conf


COPY ./conf/ssl/rmarquar.42.fr.crt /etc/nginx/ssl/rmarquar.42.fr.crt
COPY ./conf/ssl/rmarquar.42.fr.key /etc/nginx/ssl/rmarquar.42.fr.key

EXPOSE 443


CMD ["nginx", "-g", "daemon off;"]

LABEL maintainer="Robin rmarquar@student.42heilbronn.de"
