#!/bin/bash

bundle check || bundle install
bundle exec rake yarn:install

exec "$@"
