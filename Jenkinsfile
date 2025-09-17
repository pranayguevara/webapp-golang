pipeline{
    agent any

    parameters{
        string(name:'ENVIRONMENT', defaultValue:'dev', description:'Target environment')
    }

    stages{
        stage("checkout"){
            steps{
                git branch: 'master', url: 'https://github.com/pranayguevara/webapp-golang.git'
            }
        }

        stage('Build'){
            steps{
                sh 'echo "Building the app for ${params.ENVIRONMENT} environment"'
            }
        }

        stage("Test"){
            steps{
                sh 'echo "Testing the app for ${params.ENVIRONMENT}"'
            }
        }
    }
}