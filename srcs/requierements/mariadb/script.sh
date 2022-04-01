# service mysql start 
# #/etc/init.d/mysql start
service mysql start
sleep 5
mysql -u root -e  "CREATE USER 'mbifenzi'@'localhost' IDENTIFIED BY 'wordpress'; flush privileges;"
mysql -u root -e  "CREATE DATABASE IF NOT EXISTS wordpress; flush privileges;"
# mysql -u root -e "use wordpress; grant all privileges on *.* to 'mbifenzi'@'localhost' WITH GRANT OPTION IDENTIFIED BY 'wordpress'; flush privileges;"
mysql -u root -e "use wordpress; grant all privileges on *.* to 'mbifenzi'@'localhost' IDENTIFIED BY 'wordpress'; flush privileges;"
mysql -u root -e "use wordpress; grant all privileges on *.* to 'mbifenzi'@'%.%.%.%' IDENTIFIED BY 'wordpress'; flush privileges;"
#---------
mysql -u root -e  "CREATE USER 'mbifenzi2'@'%.%.%.%' IDENTIFIED BY 'wordpress'; flush privileges;"
mysql -u root -e "use wordpress; grant all privileges on wordpress.* to 'mbifenzi2'@'%.%.%.%' IDENTIFIED BY 'wordpress2'; flush privileges;"
mysql -u root wordpress < wp.sql
# mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'root';"
#/etc/init.d/mysql restart
service mysql restart 

sleep infinity
