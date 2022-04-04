# service mysql start 
# #/etc/init.d/mysql start
if [ ! -d "/var/lib/mysql/wordpress" ]; then
    service mysql start
    sleep 5
    echo BBBAFINZI
    mysql -u root -e  "CREATE DATABASE IF NOT EXISTS wordpress; flush privileges;"
    mysql -u root -e "use wordpress; grant all privileges on *.* to 'mbifenzi'@'localhost' IDENTIFIED BY 'wordpress'; flush privileges;"
    mysql -u root -e "use wordpress; grant all privileges on *.* to '${USER}'@'%.%.%.%' IDENTIFIED BY '${USER_PASSWORD}'; flush privileges;"
    #---------
    mysql -u root -e  "CREATE USER '${SECOND_USER}'@'%.%.%.%' IDENTIFIED BY '${SECOND_PASSWORD}'; flush privileges;"
    mysql -u root -e "use wordpress; grant all privileges on wordpress.* to '${SECOND_USER}'@'%.%.%.%' IDENTIFIED BY '${SECOND_PASSWORD}'; flush privileges;"
    mysql -u root wordpress < wp.sql
    mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'wordpress'; flush privileges;"
    mysql -u ${USER} -p${USER_PASSWORD} -e "DELETE FROM mysql.user WHERE User='root'; flush privileges;"
fi
    # Comment skip-networking
    # sed -i 's/skip-networking/# skip-networking/g' /etc/mysql/my.cnf
    # service mysql start
    # service mysql stop

    # Running This Command "/usr/bin/mariadbd" to stay running in the foreground
    # /usr/bin/mariadb --basedir=/usr --datadir=/var/lib/mysql --plugin-dir=/usr/lib/mariadb/plugin --user=mysql --pid-file=/run/mysqld/mariadb.pid
    mysqld_safe
    # sleep infinity