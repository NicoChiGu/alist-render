#!/bin/bash
printf "|----------------> \n"
printf "Configuring config.json\n"
touch /opt/alist/data/config.json
cat <<-EOF > /opt/alist/data/config.json
{
  "force": false,
  "address": "0.0.0.0",
  "port": 5244,
  "token_expires_in": 48,
  "site_url": "",
  "cdn": "${CDN}",
  "database": {
    "type": "${DB_TYPE}",
    "host": "${DB_HOST}",
    "port": ${DB_PORT},
    "user": "${DB_USER}",
    "password": "${DB_PASS}",
    "name": "${DB_NAME}",
    "db_file": "data/data.db",
    "table_prefix": "${DB_TABLE_PREFIX}",
    "ssl_mode": "${DB_SSL_MODE}"
  },
  "scheme": {
    "https": false,
    "cert_file": "",
    "key_file": ""
  },
  "temp_dir": "data/temp",
  "log": {
    "enable": true,
    "name": "log/log.log",
    "max_size": 10,
    "max_backups": 5,
    "max_age": 28,
    "compress": false
  }
}
EOF
printf "|------Configuring  Complete-------> \n"
printf "START ARIA2 SERVICE \n"
nohup /usr/bin/aria2c --enable-rpc &
printf "|----------ARIA2  ONLINE-----------> \n"
printf "START CRONTAB SERVICE \n"
nohup bash /opt/alist/crontab.sh &
printf "|----------CRONTAB  ONLINE-----------> \n"
printf "START ALIST NOW \n"
sleep 3
/opt/alist/alist ${APP_COMMAND}
