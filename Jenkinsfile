pipeline {

    agent any

    stages {

        stage('Build') {
            steps {
                sh '''
                    echo "** Building Docker Image ***"
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
                sh '''
                    echo "** Pushing Docker Image ***"
                    
                    echo "** Logging in ***"
                    docker login -u maor30levy -p $DOCKER_PASS
                    echo "*** Pushing image ***"
                    docker push maor30levy/client-test
                '''
                
            }
        }

        stage('Deploy') {
            steps {
                echo 'deploying..'
            }
        }
    }
}
