#!/bin/sh

# call mysql client from shell script without 
# passing credentials on command line

# This demonstrates small single queries using
# the -e parameter.   Credentials and connection
# info are sent through standard input.

# david . bennett @ percona . com - 12/27/2016

mysql_user=bolobolo
mysql_password='***'
mysql_host=127.0.0.1
mysql_port=3306
mysql_database=d7

mysql_exec() {
  local query="$1"
  local opts="$2"
  mysql_exec_result=$(
    printf "%s\n" \
      "[client]" \
      "user=${mysql_user}" \
      "password=${mysql_password}" \
      "host=${mysql_host}" \
      "port=${mysql_port}" \
      "database=${mysql_database}" \
      | HOME="/sys" mysql --defaults-file=/dev/stdin "${opts}" -e "${query}"
  )
}

mysql_exec "select 'Hello World' as Message"
echo "${mysql_exec_result}"
