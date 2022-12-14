#!/bin/bash
sudo yum update -y
sudo yum upgrade -y
sudo yum install -y vim curl wget net-tools nmap sssd realmd samba-common-tools oddjob oddjob-mkhomedir
curl -fsSL https://get.docker.com/ | sh
sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

