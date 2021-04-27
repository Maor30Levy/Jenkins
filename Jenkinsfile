pipeline {

    agent any
    
    environment {
        PASS = credentials('DOCKER_PASS') 
    }

    stages {

        stage('Build') {
            steps {
                sh '''
                    chmod -R +x ./jenkins
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

        
    }
}
