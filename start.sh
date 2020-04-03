#!/bin/bash
sed -i 's/\$\[DATABASE_DRIVER\]/$DATABASE_DRIVER/g' traccar.xml
sed -i "s/\$\[DATABASE_URL\]/$DATABASE_URL/g" traccar.xml
sed -i "s/\$\[DATABASE_USER\]/$DATABASE_USER/g" traccar.xml
sed -i "s/\$\[DATABASE_PASSWORD\]/$DATABASE_PASSWORD/g" traccar.xml

docker-compose up -d traccar