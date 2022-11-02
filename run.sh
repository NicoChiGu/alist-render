#!/bin/bash
cat <<-EOF > /opt/alist/data/config.json
{
  "force": false,
  "address": "0.0.0.0",
  "port": 5244,
  "jwt_secret": "",
  "token_expires_in": 48,
  "site_url": "",
  "cdn": "https://cdn.jsdelivr.net/npm/alist-web@$version/dist/",
  "database": {
    "type": "${DB_TYPE}",
    "host": "${DB_HOST}",
    "port": 5432,
    "user": "${DB_USER}",
    "password": "${DB_PASS}",
    "name": "${DB_NAME}",
    "db_file": "data/data.db",
    "table_prefix": "${DB_TABLE_PREFIX}",
    "ssl_mode": "disable"
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

./alist server --debug
