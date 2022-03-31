SRC = srcs/docker-compose.yml
NAME = inception

up: ${NAME}

${NAME}: ${SRC} 
	docker-compose -f ${SRC} up -d --build
down: 
	docker-compose -f ${SRC} down
rmi: 
	docker-compose -f ${SRC} down --rmi all
images :
	docker rmi db wp ng
re: down up