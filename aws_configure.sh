#!/usr/bin/env bash
apt-get update
apt install awscli -y

{
echo $AWS_Access_Key
sleep 10
echo $AWS_Secret_Access_Key
sleep 10
echo us-east-1
sleep 10
echo json
} | aws configure --profile terraform
