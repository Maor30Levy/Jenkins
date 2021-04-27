pipeline {

    agent any
    
    environment {
        PASS = credentials('DOCKER_PASS') 
    }

    stages {

        stage('Build') {
            steps {
                sh '''
                    chmod +x -R ${env.WORKSPACE}
                    ./jenkins/build/build.sh
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
                    sh "ssh -T ec2-user@$VM_IP docker run -p 80:$PORT $REGISTER_USERNAME/$COMPONENT"
                
            }
        }
    }
}
