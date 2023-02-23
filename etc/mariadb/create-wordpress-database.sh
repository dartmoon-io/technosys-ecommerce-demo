#!/usr/bin/env bash

mysql --user=root --password="$MYSQL_ROOT_PASSWORD" <<-EOSQL
    CREATE DATABASE IF NOT EXISTS wordpress;
    GRANT ALL PRIVILEGES ON \`wordpress%\`.* TO '$MYSQL_USER'@'%';
EOSQL
