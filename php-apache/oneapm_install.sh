#!/bin/bash

set -ex

which curl expect || (echo "please install curl and expect first.\n" ; exit 1)

cd /tmp
curl -o OneAPM_php_Agent_latest.tar.gz https://user.oneapm.com/account/abaca83a3db56651b015c87fccd3c21c/agent/php/OneAPM_php_Agent_latest.tar.gz
tar -zxvf OneAPM_php_Agent_latest.tar.gz
cd oneapm-php5*

touch /etc/php5/mods-available/oneapm.ini

expect -c '
spawn ./oneapm-install
expect "Enter choice (1-3, 0 to exit): "
send "1\r"
expect "Enter OneAPM license key : "
send "AwBXDl9RUgI44d8DHF9ACA5IX0fdd3FYCBRUVFUGH1015AAHGFVUSAMFdbd1BVEVVlFJAQI=\r"
expect "Selection (1-3, 0 to exit or all): "
send "3\r"
expect "Enter path of PHP: "
send "/usr/local/bin\r"
expect "exam. /usr/local/php.ini /home/work/php/php.ini"
send "/usr/local/etc/php/conf.d/oneapm.ini\r"
expect "OneAPM is now installed on your system. Congratulations!"
expect "Thank you for choosing OneAPM!"
'

cd /etc/php5/apache2/conf.d/
ln -s ../../mods-available/oneapm.ini oneamp.ini
cd /etc/php5/cli/conf.d
ln -s ../../mods-available/oneapm.ini oneamp.ini

rm -rf /tmp/oneapm*
