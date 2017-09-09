FROM atishoo/java:otter_dependency
MAINTAINER Atishoo

ENV WEB_PORT=8080 \
    MANAGER_PORT=1099 \
    DOMAIN=127.0.0.1 \
    MYSQL=127.0.0.1:3306 \
    DBUSER=root \
    DBPASSWD=hello \
    ZOOKEEPER=127.0.0.1:2181

EXPOSE $WEB_PORT $MANAGER_PORT

COPY manager/ /otter

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]

CMD ["/bin/bash"]
