# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    init.sql                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rmarquar <rmarquar@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/05/21 09:45:29 by rmarquar          #+#    #+#              #
#    Updated: 2024/05/21 09:47:22 by rmarquar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

USE mysql;
CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS 'wordpress'@'%' IDENTIFIED BY 'secret';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'%';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'wordpress';

