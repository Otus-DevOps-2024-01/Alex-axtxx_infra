#!/bin/bash -e
sudo apt-get update
sudo apt-get install -y ruby-full ruby-bundler build-essential
ruby -v
bundler -v
