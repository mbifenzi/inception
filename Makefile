SRC = srcs/docker-compose.yml
NAME = inception

up : ${NAME}

${NAME}: ${SRC} 
	docker-compose -f ${SRC} up  --build 
hosts :
		echo  "127.0.0.1 	mbifenzi.42.fr" >> /etc/hosts
down :
	docker stop $$(docker ps -qa); docker rm $$(docker ps -qa);
clean :
	docker stop $$(docker ps -qa); docker rm $$(docker ps -qa); docker rmi $$(docker images -qa) ; docker volume rm $$(docker volume ls -q)
vclean :
	docker volume rm $$(docker volume ls -q)
re : down up
