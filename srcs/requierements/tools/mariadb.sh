# service mysql start 
# #/etc/init.d/mysql start
if [ ! -d "/var/lib/mysql/wordpress" ]; then
    service mysql start
    sleep 5
    mysql -u root -e  "CREATE DATABASE IF NOT EXISTS wordpress; flush privileges;"
    mysql -u root -e "use wordpress; grant all privileges on *.* to '${USER}'@'localhost' IDENTIFIED BY 'wordpress'; flush privileges;"
    mysql -u root -e "use wordpress; grant all privileges on *.* to '${USER}'@'%.%.%.%' IDENTIFIED BY '${USER_PASSWORD}'; flush privileges;"
    #---------
    mysql -u root -e  "CREATE USER '${SECOND_USER}'@'%.%.%.%' IDENTIFIED BY '${SECOND_PASSWORD}'; flush privileges;"
    mysql -u root -e "use wordpress; grant all privileges on wordpress.* to '${SECOND_USER}'@'%.%.%.%' IDENTIFIED BY '${SECOND_PASSWORD}'; flush privileges;"
    mysql -u root wordpress < final.sql
    mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'wordpress'; flush privileges;"
    mysql -u ${USER} -p${USER_PASSWORD} -e "DELETE FROM mysql.user WHERE User='root'; flush privileges;"
fi
    mysqld_safe
    # sleep infinity