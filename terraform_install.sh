#!/bin/bash
wget https://releases.hashicorp.com/terraform/1.0.3/terraform_1.0.3_linux_amd64.zip -P ~/Downloads/terraform/ 
echo 'install unzip'
sudo apt-get install unzip -y
cd ~/Downloads/terraform && unzip terraform_1.0.3_linux_amd64.zip
sudo mv terraform /usr/local/bin/
echo >> export PATH="$PATH:/usr/local/bin/terraform" >> ~/.bashrc
source  ~/.bashrc

# then from anywhere
terraform --version
