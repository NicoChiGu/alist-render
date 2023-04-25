# alist-render
[English](./README.md)
### 将Alist部署到 Render
[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy)

### 数据库
使用Render postgresql或其他数据库
不使用数据库以Docker容器运行不会保留任何本地数据,该方案不适用sqlite3
Dockerfile构建中包含Aria2.如不需要自行删除 [Dockefile](https://github.com/NicoChiGu/alist-render/blob/main/Dockerfile) 中第8行" aria2

### ENV 变量
| Key | Default Value | Info |
|:---------|:---------|:---------|
| DB_TYPE | postgres | mysql / postgres |
| DB_HOST | / | 数据库连接地址 |
| DB_PORT | 0 | mysql 3306 / postgresql 5432 |
| DB_USER | / | 数据库用户名 |
| DB_PASS | / | 数据库用户密码 |
| DB_NAME | / | 数据库名称 |
| DB_TABLE_PREFIX | alist_ | 数据前缀*NAME*_ |
| DB_SSL_MODE | disable | **disable/enable** |
| APP_COMMAND | server | 填入server即可 |
