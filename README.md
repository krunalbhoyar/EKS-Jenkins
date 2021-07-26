in terraform_install.sh file , u need to check the version of terraform, and also after unzip the multiple files are being created, so should we delete previous ?????

add aws access key and secrete key as environment variable in jenkins:
>>dashboard>manage Jenkins> Configure System> Environment variable> add
use these env variable in below script

$aws_configure.sh
#!/usr/bin/env bash
{
echo $AWS_Access_Key
sleep 10
echo $AWS_Secret_Access_Key
sleep 10
echo us-east-1
sleep 10
echo json
} | aws configure --profile terraform
