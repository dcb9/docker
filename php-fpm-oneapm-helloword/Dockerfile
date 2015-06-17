FROM dcb9/php-fpm-oneapm:latest

# change your oneapm key
RUN sed -i 's/oneapm.key = "000000000000000000000000000000000000000000000000000000000000000000000000"/oneapm.key = "111111111111111111111111111111111111111111111111111111111111111111111111"/' /usr/local/etc/php/php.ini
ADD helloword.com.conf /etc/nginx/conf.d/helloword.com.conf
ADD helloword /var/www/html/helloword
