pipeline{
    agent any

    stages{
        stage("checkout"){
            steps{
                git branch: 'master', url: 'https://github.com/pranayguevara/webapp-golang.git'
            }
        }

        stage('Build'){
            steps{
                sh 'echo "Building the app"'
            }
        }

        stage("Test"){
            steps{
                sh 'echo "Testing the app"'
            }
        }
    }
}