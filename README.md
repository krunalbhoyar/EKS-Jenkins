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
$cat ~/.aws/config ______________--this is present at "/var/lib/jenkins/.aws/credentials"
$cat ~/.aws/credentials ______________--this is present at "/var/lib/jenkins/.aws/config"

>>add this in eks file 

output "endpoint" {
  value = aws_eks_cluster.eks.endpoint
}

to connect eks cluster from terminal watch video
>>  https://www.youtube.com/watch?v=aZd0UolVwD4

0)install aws cli then configure aws
$ apt update
$ sudo apt install awscli -y
$ aws configure --profile terraform

1)To install aws-iam-authenticator on Linux
$ curl -o aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.21.2/2021-07-05/bin/linux/amd64/aws-iam-authenticator

2)Apply execute permissions to the binary.
$  chmod +x ./aws-iam-authenticator

$ mkdir -p $HOME/bin && cp ./aws-iam-authenticator $HOME/bin/aws-iam-authenticator && export PATH=$PATH:$HOME/bin

3)Install kubectl aws
Kubernetes 1.21:
curl -o kubectl https://amazon-eks.s3-us-west-2.amazonaws.com/1.21.2/2021-07-05/bin/linux/amd64/kubectl

4)Apply execute permissions to the binary.
$ chmod +x ./kubectl
$ mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$PATH:$HOME/bin
$ $ aws eks --region us-east-1 update-kubeconfig --name eks --profile terraform
$ export KUBECONFIG=~/.kube/config
$ kubectl get svc
