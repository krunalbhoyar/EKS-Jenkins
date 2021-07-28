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


in jenkins groovy script "sudo" command will not work, so add this line to /etc/sudoers file as a root user
$sudo vim /etc/sudoers
jenkins ALL=(ALL) NOPASSWD: ALL

usermod -a -G sudo jenkins

to access cluster run command prasent in pipeline script
$snap install kubectl --classic
$aws eks --region us-east-1 update-kubeconfig --name eks --profile terraform

$cat ~/.kube/config
$cat ~/.aws/config
$cat ~/.aws/credentials

>>add this in eks file 

output "endpoint" {
  value = aws_eks_cluster.eks.endpoint
}
