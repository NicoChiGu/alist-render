# alist-render
[English](./README.md)
### 将Alist部署到 Render
[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy)

<br>

## !!Render已修改Free Plan计划:
#### PostgreSQL在Free Plan计划中 会在每次创建后有效90天,90天过后自动暂停并有14天救赎期(通过升级付费计划),否则数据库中的数据将会删除. [详细请看文档](https://render.com/docs/free#free-postgresql-databases)
#### 推荐使用(Supabase)[https://supabase.com/] PostgreSQL | `FreePlan`计划允许最多创建2个数据库,每个数据库大小`2G`，【数据库14天内没有API访问/数据访问 将会邮件提醒暂停,需手动开启,数据不会删除】

<br>

## 其他说明:
使用Render postgresql或其他数据库

不使用数据库以Docker容器运行不会保留任何本地数据(付费方案除外),该方案不适用sqlite3

Dockerfile构建中包含Aria2.如不需要自行删除 [Dockefile](https://github.com/NicoChiGu/alist-render/blob/main/Dockerfile) 中第8行 `aria2`

本Repo中预置一个非持久性文件夹,适用于一般大小的文件临时储存或转存,使用只需要在Alist添加`本地磁盘`地址为 `/opt/alist/tempdisk`

<br>

## 如何更新Alist版本:
仅需要在您的 `Web Service` 中手动执行 `Manual Deploy` 中的 `Clear build cache & deploy` .他将会重新构建一次Docker并自动下载最新版本Alist

<br>

## ENV 变量
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
