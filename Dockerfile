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

ADD manager/ /otter

RUN sed -i 's/otter.domainName = 127.0.0.1/otter.domainName = $DOMAIN/' /otter/conf/otter.properties \
    && sed -i 's/otter.port = 8080/otter.port = $WEB_PORT/' /otter/conf/otter.properties \
    && sed -i 's/jdbc:mysql://127.0.0.1:3306/otter/jdbc:mysql://$MYSQL/otter/' /otter/conf/otter.properties \
    && sed -i 's/driver.username = root/driver.username = $DBUSER/' /otter/conf/otter.properties \
    && sed -i 's/driver.password = hello/driver.password = $DBPASSWD/' /otter/conf/otter.properties \
    && sed -i 's/manager.port = 1099/manager.port = $MANAGER_PORT/' /otter/conf/otter.properties \
    && sed -i 's/otter.zookeeper.cluster.default = 127.0.0.1:2181/otter.zookeeper.cluster.default = $ZOOKEEPER/' /otter/conf/otter.properties \

CMD ["/otter/bin/startup.sh"]
