apt install -y php7.4-fpm php7.4-common php7.4-mysql php7.4-gmp \
    php7.4-curl php7.4-intl php7.4-mbstring php7.4-xmlrpc php7.4-gd \
    php7.4-xml php7.4-cli php7.4-zip php7.4-soap php7.4-imap;

chown -R www-data /usr/share/nginx/html/wordpress
sleep infinity