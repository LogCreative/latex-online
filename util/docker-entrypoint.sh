#!/bin/bash
set -e

cd /var/www

# change to a local server
npm config set registry https://mirrors.cloud.tencent.com/npm/

npm install .

export NODE_ENV=production
export VERSION=benchmark

# use forever to manage service
npm install -g forever
forever --killTree app.js
