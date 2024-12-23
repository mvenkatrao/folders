def git_url = "git@bitbucket.org:myOrg_ai/my-test-repo-service.git"
def git_branch="dev"
def git_credentialsid = "bitbucket_devops_credentials"

def appName = "my-test-service"


def dockerUSER ='myOrg'
def dockerUID = '1000'
def dockerGID = '1000'
def dockerPW = 'myOrg'


pipeline {
    agent any
    parameters {
        string(name: 'deployHost', defaultValue: '10.0.0.5')
    }
    tools {
        maven 'maven_38'
        jdk 'Java1.8'
    }
    
    environment {
        imagename = 'myOrg.azurecr.io/my-test-service'
        registry = 'https://myOrg.azurecr.io'
        dockerImage = ''
        registryCredential = 'AzureCR'
        registryCredentialKey='AzureCR_Key'
    }
    
    stages {
        
        stage('Clean workspace') {
            steps {
                cleanWs()
            }
        }
       
        stage('Git Checkout') {
            steps {
                git credentialsId: "${git_credentialsid}", url: "${git_url}", branch: "${git_branch}"
            }
        }
        
        
        stage('Build Project') {
            steps {
                    sh 'mvn clean install -DskipTests'
            }
        }
        

        stage('Capture Version') {
            steps {
                script {
                        def pom = readMavenPom file: 'pom.xml'
                        env.version = pom.version
                        echo "version ::: ${env.version}"
                    }
            }
        }
        
        
        stage('Move tarball to root dir') {
            steps {
                    
                    sh "cp my-test-service/target/*.tar.gz my-test-service/${appName}.tar.gz"
            }
        }
       
        stage('Docker Build') {
            steps {
                script {
                            withDockerRegistry(credentialsId: registryCredential, url: registry) {
                            dockerImage = docker.build(imagename,"--build-arg USER=$dockerUSER --build-arg UID=$dockerUID --build-arg GID=$dockerGID --build-arg PW=$dockerPW my-test-service/.")
                    }
                }
            }
        }
       
        stage('Docker Image push to ACR') {
            steps {
                script {
                    withDockerRegistry(credentialsId: registryCredential, url: registry) {
                        dockerImage.push(env.version)
                        //dockerImage.push(env.version)
                        //dockerImage.push('latest')
                    }
                }
            }
        }
        

        stage('Deploy to Env') {
            steps {
                script {
                
                withCredentials([sshUserPrivateKey(credentialsId: 'ssh_credentials', keyFileVariable: 'SSH_KEY', usernameVariable: 'SSH_USER')])
                    {
                        withCredentials([string(credentialsId: 'AzureCR_Key', variable: 'AzureCR_Key')]) {
                            sh 'ssh -o StrictHostKeyChecking=no -i ${SSH_KEY} ${SSH_USER}@$deployHost "echo ${AzureCR_Key} | docker login $registry -u myOrg --password-stdin"'
                        }
                        def output1 = sh(script: 'ssh -o StrictHostKeyChecking=no -i ${SSH_KEY} ${SSH_USER}@$deployHost "sudo mkdir -p  /var/log/my-test-service;sudo chmod 777 /var/log/my-test-service; sudo chown myOrg:myOrg /var/log/my-test-service"', returnStdout: true).trim()
                        def output2 = sh(script: 'ssh -o StrictHostKeyChecking=no -i ${SSH_KEY} ${SSH_USER}@$deployHost "docker pull $imagename:$version"', returnStdout: true).trim()
                        def output3 = sh(script: 'ssh -o StrictHostKeyChecking=no -i ${SSH_KEY} ${SSH_USER}@$deployHost "docker stop mycontainer || true "', returnStdout: true).trim()
                        def output4 = sh(script: 'ssh -o StrictHostKeyChecking=no -i ${SSH_KEY} ${SSH_USER}@$deployHost "docker rm mycontainer || true "', returnStdout: true).trim()
                        def output5 = sh(script: 'ssh -o StrictHostKeyChecking=no -i ${SSH_KEY} ${SSH_USER}@$deployHost "docker run -itd -e JMX_REMOTE_PORT=32006 -e JMX_EXPORTER_PORT=42006 -e APPLICATION_PORT=9145 -e APPLICATION_ADMIN_PORT=9146 -e POSTGRES_URL=jdbc:postgresql://172.16.0.5:5432/Config_Service_SaaS_Console_2_1_0?currentSchema=config_service -p 9145:9145 -p 9146:9146 -p 42006:42006 -p 32006:32006 -v /var/log/my-test-service:/var/log/my-test-service --name mycontainer $imagename:$version"', returnStdout: true).trim()
                        
                    }
            }
                }
            }
    }
}