#!/bin/bash -e
sleep 10
apt-get update
sleep 10
apt-get install -y ruby-full ruby-bundler build-essential
ruby -v
bundler -v
