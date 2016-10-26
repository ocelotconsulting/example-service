#!/bin/bash
sudo yum update -y
sudo yum install git -y
git clone https://github.com/ocelotconsulting/example-service.git
cd example-service
sudo curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash
export NVM_DIR="/home/ec2-user/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
nvm install 6.9.1
npm install -g pm2
npm install
pm2 start server.js
