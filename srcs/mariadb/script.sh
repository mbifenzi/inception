service mysql start

mysql -u root -proot -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${USER_PASSWORD}'; flush privileges"
mysql -u root -p${USER_PASSWORD} -e "use mysql; update user set user='${USER}' where user='root'; flush privileges"
mysql -u ${USER} -p${USER_PASSWORD} -e "FLUSH PRIVILEGES;" 
sleep infinity
