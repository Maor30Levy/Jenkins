pipeline {

    agent any
    
    environment {
        PASS = credentials('DOCKER_PASS') 
    }

    stages {

        stage('Build') {
            steps {
                sh '''
                    echo "** Building Docker Image ***"
                    docker build -t $REGISTER_USERNAME/$COMPONENT -f ./$COMPONENT/Dockerfile ./$COMPONENT
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
                    docker login -u $REGISTER_USERNAME -p $PASS
                    echo "*** Pushing image ***"
                    docker push $REGISTER_USERNAME/$COMPONENT
                '''
                
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                    echo 'deploying..'
                    echo $VM_IP
                '''
                
            }
        }
    }
}
