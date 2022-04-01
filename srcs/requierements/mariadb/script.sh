# service mysql start 
# #/etc/init.d/mysql start
service mysql start
sleep 5
mysql -u root -e  "CREATE USER 'mbifenzi'@'%.%.%.%' IDENTIFIED BY 'wordpress'; flush privileges;"
mysql -u root -e  "create database wordpress; flush privileges;"
# mysql -u root -proot -e "grant all privileges on *.* to 'mbifenzi'@'%.%.%.%' IDENTIFIED by 'wordpress'; flush privileges;"
mysql -u root -e "use wordpress; grant all privileges on *.* to 'mbifenzi'@'%.%.%.%' WITH GRANT OPTION; flush privileges;"

#/etc/init.d/mysql restart
service mysql restart 

sleep infinity
