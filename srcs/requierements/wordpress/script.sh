
# if [ ! -d "/var/www/html" ]; then
cd /tmp \
    && curl -LO https://wordpress.org/latest.tar.gz && tar xzvf latest.tar.gz \
    && mkdir -p /var/www/html \
    && cp -r /tmp/wordpress/* /var/www/html/ \
    && chown -R www-data:www-data /var/www/html/
    sed -i 's|listen = /run/php/php7.3-fpm.sock|listen = 0.0.0.0:9000|g' /etc/php/7.3/fpm/pool.d/www.conf
    mkdir /run/php/
    cp /wp-config.php /var/www/html/
# fi
php-fpm7.3 -F -R