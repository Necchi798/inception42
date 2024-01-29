COMPOSE_FILE = ./srcs/docker-compose.yml

all:
	docker-compose -f $(COMPOSE_FILE) build
	docker-compose -f $(COMPOSE_FILE) up -d

stop:
	docker stop $$( docker ps -qa)

clean:
	docker-compose -f $(COMPOSE_FILE) down
	- docker rmi -f $$( docker images -qa) 2>/dev/null
	- docker volume rm $$( docker volume ls -q) 2>/dev/null
	rm -rf /home/gmezzini/data/wordpress/*
	rm -rf /home/gmezzini/data/mariadb/*
	docker system prune -f


re: clean all
