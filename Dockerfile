FROM atishoo/java:otter_dependency
MAINTAINER Atishoo

ENV NID=1

ADD node/ /otter

RUN echo "$NID" > /otter/conf/nid


CMD ["/bin/bash"]
