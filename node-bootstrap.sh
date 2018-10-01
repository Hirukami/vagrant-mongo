#!/usr/bin/env bash

sudo su
    sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
    echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
    apt-get -y update
    apt-get install -y mongodb-org
    sed -i 's/bindIp: 127.0.0.1/bindIp: 0.0.0.0/' /etc/mongod.conf
    cat <<EOF >> /etc/mongod.conf
replication:
   replSetName: "rs0"
EOF
    wget http://media.mongodb.org/zips.json
    #mongoimport -v --file=zips.json IMPORT DATA
    systemctl start mongod.service
