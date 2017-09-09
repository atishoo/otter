# otter
wonderful otter docker

已公开的环境变量
NID  nid
MANAGER  管理器的地址
PORT_MACHINE  端口
PORT_DOWNLOAD 下载端口
PORT_MBEAN  不知道干啥用的端口

docker run -it -e NID=1 -e MANAGER=119.23.70.188:1099 --restart always --net host atishoo/otter_node

然后/otter/bin/startup.sh
