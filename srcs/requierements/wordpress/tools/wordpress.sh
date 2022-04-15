
if [ ! -f "/var/www/wordpress/wp-config.php" ]; then
cd /var/www/ \
    && curl -LO https://wordpress.org/latest.tar.gz && tar xzvf latest.tar.gz \
    && rm -rf latest.tar.gz \
    && cp /wp-config.php /var/www/wordpress/ \
    && chown -R www-data:www-data /var/www/wordpress/
fi
    sed -i 's|listen = /run/php/php7.3-fpm.sock|listen = 0.0.0.0:9000|g' /etc/php/7.3/fpm/pool.d/www.conf
    chown -R www-data:www-data /var/www/wordpress/
    mkdir /run/php/
    php-fpm7.3 -F -R