# alist-render
[切换中文](./README_CN.md)
### 将Alist部署到 Render
[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy)

### 数据库
使用Render postgresql或其他数据库
不使用数据库以Docker容器运行不会保留任何本地数据,该方案不适用sqlite3

### ENV 变量
| Key | Default Value | Info |
|:---------|:---------|:---------|
| DB_TYPE | postgres | mysql / postgres |
| DB_HOST | / | 数据库连接地址 |
| DB_PORT | 0 | mysql 3306 / postgresql 5432 |
| DB_USER | / | 数据库用户名 |
| DB_PASSWORD | / | 数据库用户密码 |
| DB_NAME | / | 数据库名称 |
| DB_TABLE_PREFIX | alist_ | 数据前缀*NAME*_ |
| DB_SSL_MODE | disable | **disable/enable** |
| APP_COMMAND | server | 填入server即可 |
