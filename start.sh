#!/bin/bash
source .env

sed -i "s/\[DATABASE\]/$DATABASE/g" traccar.xml
sed -i "s/\[DATABASE_RDBMS\]/$DATABASE_RDBMS/g" traccar.xml
sed -i "s/\[DATABASE_DRIVER\]/$DATABASE_DRIVER/g" traccar.xml
sed -i "s/\[DATABASE_OPTIONS\]/$DATABASE_OPTIONS/g" traccar.xml
sed -i "s/\[DATABASE_HOST\]/$DATABASE_HOST/g" traccar.xml
sed -i "s/\[DATABASE_PORT\]/$DATABASE_PORT/g" traccar.xml
sed -i "s/\[DATABASE_USER\]/$DATABASE_USER/g" traccar.xml
sed -i "s/\[DATABASE_PASSWORD\]/$DATABASE_PASSWORD/g" traccar.xml

docker-compose up -d traccar