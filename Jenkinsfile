pipeline {
    agent any
     tools{
        maven '3.9.4'
    }
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
		stage('Integration testing') {
			steps {
				sh 'mvn verify -DskipUnitTests'
			}
		}
    }
}
