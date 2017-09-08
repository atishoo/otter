FROM atishoo/java:otter_dependency
MAINTAINER Atishoo

ENV NID=1 \
    MANAGER=127.0.0.1:1099 \
    PORT_MACHINE=2088 \
    PORT_DOWNLOAD=2089 \
    PORT_MBEAN=2090

ADD node/ /otter

RUN echo "$NID" > /otter/conf/nid \
    && sed -i ’s/otter.manager.address = 127.0.0.1:1099/otter.manager.address = $MANAGER/’

EXPOSE $PORT_MACHINE $PORT_DOWNLOAD $PORT_MBEAN

CMD ["/otter/bin/startup.sh"]
