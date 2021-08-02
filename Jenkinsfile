pipeline {
    agent any

    stages {
        stage('cloning code from git') {
            steps {
                git 'https://github.com/krunalbhoyar/EKS-Jenkins.git'
            }
        }
        stage('Install Terraform') {
            steps {
                sh 'chmod +x terraform_install.sh'
                sh './terraform_install.sh'
            }
        }
        stage('Create EKS Cluster') {
            steps {
                sh 'chmod +x aws_configure.sh'
                sh './aws_configure.sh'
                sh 'cat ~/.aws/config'
                sh 'cat ~/.aws/credentials'
                sh 'ls'
                sh 'pwd'
                dir("TF-Scripts") {      //as cd command is not working
                sh 'pwd'
                sh 'ls'
                sh 'terraform init'
                sh 'terraform validate'
                sh 'terraform plan'
                sh 'terraform apply -auto-approve'
                sh 'sudo snap install kubectl --classic'
                sh 'sudo aws eks --region us-east-1 update-kubeconfig --name eks --profile terraform' //To access kubernetes cluster
                }
            }
        }
    }
}

