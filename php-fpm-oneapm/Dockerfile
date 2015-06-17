FROM dcb9/php-fpm:latest

# OneAPM Agent install start #
ADD OneAPM_php_Agent_2.3.10.tar.gz /usr/local
ADD oneapm_install.sh /oneapm_install.sh
RUN chmod a+x /oneapm_install.sh
RUN cd /usr/local/oneapm-php5-linux-install-script && \
  /oneapm_install.sh && \
  rm -rf /oneapm_install.sh
# OneAPM Agent install end #
