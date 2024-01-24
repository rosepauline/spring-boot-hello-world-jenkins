pipeline {
    agent any

    stages {
        stage('Git Checkout') {
            steps {
                // Checkout the source code from version control
                git 'https://github.com/rosepauline/spring-boot-hello-world-jenkins.git'
            }
        }
        stage('Unit Testing') {
            steps {
                sh 'mvn test'
            }
        }
    }
}
