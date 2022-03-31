# service mysql start 
# #/etc/init.d/mysql start
service mysql start
mysql -u root -proot -e  "CREATE USER 'mbifenzi'@'%.%.%.%' IDENTIFIED BY 'wordpress';"
mysql -u root -proot -e  "create database wordpress; flush privileges;"
# mysql -u root -proot -e "grant all privileges on *.* to 'mbifenzi'@'%.%.%.%' IDENTIFIED by 'wordpress'; flush privileges;"
mysql -u root -proot -e "use wordpress; grant all privileges on *.* to 'mbifenzi'@'%.%.%.%'; flush privileges;"

#/etc/init.d/mysql restart
service mysql restart 

 sleep infinity
