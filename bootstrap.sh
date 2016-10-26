#!/bin/bash
yum -y update
yum -y install git
curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -
yum -y install nodejs
git clone https://github.com/ocelotconsulting/example-service.git
cd example-service
git checkout v2
npm install -g pm2
npm install
pm2 start server.js
