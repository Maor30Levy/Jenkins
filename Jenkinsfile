pipeline {

    agent any
    
    environment {
        PASS = credentials('DOCKER_PASS') 
    }

    stages {

        stage('Build') {
            steps {
                sh '''
                    chmod +x ./jenkins/build/build.sh
                    ./jenkins/build/build.sh
                '''
            }
        }

        stage('Test') {
            steps {
                sh '''
                    chmod +x ./jenkins/test/test.sh
                    ./jenkins/test/test.sh
                '''
            }
        }

        stage('Push') {
            steps {
                sh '''
                    chmod +x ./jenkins/push/push.sh
                    ./jenkins/push/push.sh
                '''
                
            }
        }

        
    }
}
