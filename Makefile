# Makefile for Docker Compose Setup

# Service names from docker-compose.yml
SERVICES = nginx wordpress mariadb

# Docker Compose commands
COMPOSE = docker-compose -f ./srcs/docker-compose.yml

.PHONY: all build up down start stop restart logs clean

# Default target: build and start all containers
all: build up

# Build containers
build:
	$(COMPOSE) build

# Start containers
up:
	$(COMPOSE) up -d

# Shut down containers
down:
	$(COMPOSE) down

# Start containers
start:
	$(COMPOSE) start

# Stop containers
stop:
	$(COMPOSE) stop

# Restart containers
restart:
	$(COMPOSE) restart

# Show logs of all containers
logs:
	$(COMPOSE) logs -f

# Clean up data and containers
clean: down
	$(COMPOSE) rm -f
	$(COMPOSE) volume rm $(shell $(COMPOSE) volume ls -q)

# Control individual services
.PHONY: $(SERVICES)

$(SERVICES):
	$(COMPOSE) up -d $@
