#!/bin/bash
wget https://releases.hashicorp.com/terraform/1.0.3/terraform_1.0.3_linux_amd64.zip -P ~/Downloads/terraform/ 
apt install unzip -y
cd ~/Downloads/terraform && unzip terraform_1.0.3_linux_amd64.zip
mv terraform /usr/local/bin/
echo >> export PATH="$PATH:/usr/local/bin/terraform" >> ~/.bashrc
source  ~/.bashrc

# then from anywhere
terraform --version
