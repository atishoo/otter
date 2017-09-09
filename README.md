# otter
wonderful otter docker

可用环境变量
WEB_PORT  网络端口
MANAGER_PORT  管理台端口
DOMAIN  管理地址
MYSQL  数据库配置 eg.127.0.0.1:3306
DBUSER  用户名
DBPASSWD 密码
ZOOKEEPER  距离最近的动物管理员 eg.127.0.0.1:2181


docker run -it -e MYSQL=118.178.226.76:3306 -e ZOOKEEPER=0.0.0.0:2181 -e DBPASSWD=UxgtRQ%fRG7g7^T@ --restart always --net host atishoo/otter_manager

然后运行/otter/bin/startup.sh
