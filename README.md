# alist-render

### Building Container Based on Debian Stable
### 基于Debian Stable 构建Docker容器

[切换中文](./README_CN.md)


### Deploy Alist to Render
[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy)

 
## database
use Render postgresql or others database

 
## ARIA2 On this repository
if you want to disable aria2. plase **Fork** and comment field in run.sh Lines #41 to #43


## ENV 
| Key | Default Value | Info |
|:---------|:---------|:---------|
| DB_TYPE | postgres | mysql / postgres |
| DB_HOST | / | Database Host |
| DB_PORT | 0 | mysql 3306 / postgresql 5432 |
| DB_USER | / | Database User |
| DB_PASSWORD | / | Database Password |
| DB_NAME | / | Database Name |
| DB_TABLE_PREFIX | alist_ | *NAME*_ |
| DB_SSL_MODE | disable | **disable/enable** |
| APP_COMMAND | server | 
