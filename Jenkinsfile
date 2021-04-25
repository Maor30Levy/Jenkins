pipeline {

    agent any

    stages {

        stage('Build') {
            steps {
                sh '''
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