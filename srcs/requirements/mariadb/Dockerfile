FROM alpine:3.18

RUN apk update && apk --no-cache add mariadb mariadb-client

RUN mkdir -p /var/log/mysql && chown -R mysql:mysql /var/log/mysql

COPY conf/my.cnf /etc/mysql/my.cnf
COPY conf/init.sql /docker-entrypoint-initdb.d/init.sql

EXPOSE 3306

CMD ["mysqld", "--user=mysql"]