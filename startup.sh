#!/bin/bash

PORT=3000

service postgresql start
service redis-server start
service varnish start

cd /Windshaft-cartodb
node app.js development &

cd /CartoDB-SQL-API
node app.js development &

cd /cartodb
./script/restore_redis &
bundle exec script/resque &
bundle exec rails s -p $PORT
