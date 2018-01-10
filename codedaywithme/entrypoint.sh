#!/bin/sh

# clear the puma pidfile when docker restarts
if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

# Check or install the app dependencies via Bundler:
bundle check || bundle

rake db:drop
rake db:create
rake db:migrate
rake db:seed

rails s