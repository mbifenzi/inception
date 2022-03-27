# #!/bin/sh
service mysql start
# mysql -u root -proot -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${USER_PASSWORD}';" && echo 1 
# mysql -u root -p${USER_PASSWORD} -e "FLUSH PRIVILEGES;" && echo 2 
# mysql -u root -p${USER_PASSWORD} -e "use mysql; update user set user='${USER}' where user='root';" && echo 3 
# mysql -u root -p${USER_PASSWORD} -e "FLUSH PRIVILEGES;" && echo 4 
# mysql -u ${USER} --password=${USER_PASSWORD} -e "GRANT ALL PRIVILEGES ON *.* TO '${USER}'@'localhost';"
# mysql -u ${USER} --password=${USER_PASSWORD} -e "CREATE DATABASE ${DATABASE_NAME}; use ${DATABASE_NAME};"
# mysql -u ${USER} --password=${USER_PASSWORD} -e "CREATE USER '${SECOND_USER}'@'localhost' IDENTIFIED BY '${SECOND_PASSWORD}';"
# mysql -u ${USER} --password=${USER_PASSWORD} -e "FLUSH PRIVILEGES;"

#  /bin/bash

# service mysql start
# mysql -u root -e "CREATE USER 'mbifenzi'@'localhost' IDENTIFIED BY '123456';"
# mysql -u root -e "CREATE DATABASE mbifenzidb; use mbifenzidb;"
# mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'mbifenzi'@'localhost';"
# mysql -u root -e "FLUSH PRIVILEGES;"
# service mysql stop

# mysqld_safe
sleep infinity


mysql -u root -proot -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${USER_PASSWORD}';"
mysql -u root -p${USER_PASSWORD} -e "FLUSH PRIVILEGES;"
mysql -u root -p${USER_PASSWORD} -e "use mysql; update user set user='${USER}' where user='root';"
mysql -u root -p${USER_PASSWORD} -e "FLUSH PRIVILEGES;"