# Makefile für Docker Compose Setup

# Dienstnamen aus docker-compose.yml
SERVICES = nginx wordpress mariadb

# Docker Compose Befehle
COMPOSE = docker-compose -f ./srcs/docker-compose.yml

.PHONY: all build up down start stop restart logs clean

# Standardziel: alle Container bauen und starten
all: build up

# Container bauen
build:
	$(COMPOSE) build

# Container starten
up:
	$(COMPOSE) up -d

# Container herunterfahren
down:
	$(COMPOSE) down

# Container starten
start:
	$(COMPOSE) start

# Container stoppen
stop:
	$(COMPOSE) stop

# Container neu starten
restart:
	$(COMPOSE) restart

# Logs aller Container anzeigen
logs:
	$(COMPOSE) logs -f

# Daten und Container bereinigen
clean: down
	$(COMPOSE) rm -f
	$(COMPOSE) volume rm $(shell $(COMPOSE) volume ls -q)

# Individuelle Dienste steuern
.PHONY: $(SERVICES)

$(SERVICES):
	$(COMPOSE) up -d $@
