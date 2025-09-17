pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo "Checking out code..."
            }
        }
        stage('Build') {
            steps {
                echo "Building for environment: ${env.BRANCH_NAME}"
                // build steps here
            }
        }
        stage('Deploy') {
            steps {
                echo "Deploying to ${env.BRANCH_NAME} environment"
                // deployment steps here
            }
        }
    }
}