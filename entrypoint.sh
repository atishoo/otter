#!/bin/bash

set -e
echo "$NID" > /otter/conf/nid
sed -i "s/otter.manager.address = 127.0.0.1:1099/otter.manager.address = $MANAGER/" /otter/conf/otter.properties

#sh /otter/bin/startup.sh

exec "$@"
