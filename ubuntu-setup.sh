#!/bin/bash
# This file should be sourced

# Change directory to user home
cd /home

# Upgrade all packages that have available updates and remove old ones.
sudo apt-get update
sudo apt upgrade -y
sudo apt autoremove --assume-yes

# Install git
sudo apt install git --assume-yes

# Install Azure CLI
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

# Install venv and pip
sudo apt install python3-venv --assume-yes
sudo apt install python3-pip --assume-yes
sudo apt install phython-pip --assume-yes

# Install ansible and azure modules into virtual environment
pip3 install -r https://raw.githubusercontent.com/globalbao/terraform-azurerm-ansible-linux-vm/master/scripts/requirements-ansible.txt
pip3 install -r https://raw.githubusercontent.com/globalbao/terraform-azurerm-ansible-linux-vm/master/scripts/requirements-azure.txt

# Install the necessary repository
sudo apt-add-repository ppa:ansible/ansible --assume-yes

# Setup virtual environment and push home folder ownership
sudo python3 -m venv venv
sudo chown ansibleadmin /home/ansibleadmin --recursive

# Update apt
sudo apt-get update

# Install Python
sudo apt-get install python -y

# Install PostgreSQL Client
sudo apt install postgresql-client --assume-yes
psql --version

# Install Ansible
sudo apt-get install ansible -y

# Install PostgreSQL
sudo apt-get install postgresql-contrib --assume-yes
sudo apt-get -y install postgresql --assume-yes
sudo ln -s /usr/share/postgresql-common/pg_wrapper /usr/bin/pgbench
psql --version

# Set timezone
sudo cp --force /usr/share/zoneinfo/America/Toronto /etc/localtime