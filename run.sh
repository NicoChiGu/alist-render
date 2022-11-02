cat <<-EOF > /opt/alist/data/config.json
{
  "force": false,
  "address": "0.0.0.0",
  "port": 5244,
  "jwt_secret": "random generated",
  "token_expires_in": 48,
  "site_url": "",
  "cdn": "https://cdn.jsdelivr.net/npm/alist-web@$version/dist/",
  "database": {
    "type": "postgres",
    "host": "dpg-cdgob582i3mnkshnv350-a",
    "port": 5432,
    "user": "terata2",
    "password": "JVHdpPTBCIyz6wt4DkTOEGoxnhZO5HKS",
    "name": "terata2",
    "db_file": "data/data.db",
    "table_prefix": "alist_",
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
