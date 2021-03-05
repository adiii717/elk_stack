#!/bin/bash
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.10.1-x86_64.rpm
yum install elasticsearch-7.10.1-x86_64.rpm  -y 
sudo systemctl daemon-reload
sudo systemctl enable elasticsearch.service
sudo systemctl start elasticsearch.service
wget https://artifacts.elastic.co/downloads/kibana/kibana-7.10.1-x86_64.rpm
shasum -a 512 kibana-7.10.1-x86_64.rpm 
yum install kibana-7.10.1-x86_64.rpm -y 
sudo /bin/systemctl daemon-reload
sudo /bin/systemctl enable kibana.service
wget https://raw.githubusercontent.com/Adiii717/elk_stack/main/config/kibana.yml /etc/kibana/kibana.yml
sudo systemctl start kibana.service



