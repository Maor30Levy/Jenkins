pipeline {

    agent any

    stages {

        stage('Build') {
            steps {
                sh '''
                    echo "****************************"
                    echo "** Building Docker Image ***"
                    echo "****************************"
                    docker build -t maor30levy/client-test -f ./client-template/Dockerfile ./client-template
                '''
            }
        }

        stage('Test') {
            steps {
                echo 'testing..'
            }
        }

        stage('Push') {
            steps {
                echo 'pushing..'
            }
        }

        stage('Deploy') {
            steps {
                echo 'deploying..'
            }
        }
    }
}
