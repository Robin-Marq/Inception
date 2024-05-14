# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rmarquar <rmarquar@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/05/14 13:29:23 by rmarquar          #+#    #+#              #
#    Updated: 2024/05/14 14:46:31 by rmarquar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Use the specified version of Alpine
FROM alpine:3.18

# Install MariaDB
RUN apk update && apk --no-cache add mariadb mariadb-client

# Copy the custom configuration files
COPY conf/my.cnf /etc/mysql/my.cnf
COPY conf/init.sql /tmp/init.sql

# Expose the default MySQL port
EXPOSE 3306

# Define the entry point
CMD ["mysqld", "--user=mysql", "--init-file=/tmp/init.sql"]