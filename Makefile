SRC = srcs/docker-compose.yml
NAME = inception

opla: ${NAME}

${NAME}: ${SRC} 
	docker-compose -f ${SRC} up  --build 
down: 
	docker-compose -f ${SRC} down
rmi: 
	docker-compose -f ${SRC} down --rmi all --volumes
images :
	docker rmi db wp ng
opla 3awtani: down up
