pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the source code from version control
                checkout scm
            }
        }

        stage('Build') {
            steps {
                // Set up Java environment (Java 8)
                tools {
                    jdk 'jdk8'
                }

                // Build the Spring Boot application
                sh './mvnw clean package'
            }
        }

        stage('Test') {
            steps {
                // Run tests
                sh './mvnw test'
            }
        }

        stage('Deploy') {
            steps {
                // Your deployment steps go here
            }
        }
    }

    post {
        success {
            // Send notifications, deploy to production, etc.
        }
    }
}
