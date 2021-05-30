pipeline {

    agent any
    
    environment {
        PASS = credentials('DOCKER_PASS') 
    }

    stages {
        stage('Permissions-Setup') {
            steps {
                sh '''
                    echo "***** Setting up permissions ******"
                    chmod -R +x ./jenkins
                '''
            }
        }
        stage('Build') {
            steps {
                sh '''
                    ./jenkins/build/build.sh
                '''
            }
        }

        stage('Test') {
            steps {
                sh '''
                    ./jenkins/test/test.sh
                '''
            }
        }

        stage('Push') {
            steps {
                sh '''
                    ./jenkins/push/push.sh
                '''
                
            }
        }
        
        stage('Deploy') {
            steps {
                    sh '''
                    ./jenkins/deploy/deploy.sh
                '''
                
            }
        }

        
    }
}
