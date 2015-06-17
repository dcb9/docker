#!/usr/bin/expect
spawn ./oneapm-install
expect "Enter choice (1-3, 0 to exit): "
send "1\r"
expect "Enter OneAPM license key : "
send "000000000000000000000000000000000000000000000000000000000000000000000000\r"
expect "Selection (1-3, 0 to exit or all): "
send "1\r"
expect "OneAPM is now installed on your system. Congratulations!"
expect "Thank you for choosing OneAPM!"
