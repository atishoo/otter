FROM otter
MAINTAINER Atishoo

ENV WEB_PORT=8080 \ 
    MANAGER_PORT=1099

EXPOSE $WEB_PORT $MANAGER_PORT

ADD manager/ /otter


CMD ["/otter/bin/startup.sh","/bin/bash"]
