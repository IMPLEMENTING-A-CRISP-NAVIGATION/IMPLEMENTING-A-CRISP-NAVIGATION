pipeline {
    agent any
    tools {
        maven 'maven3'
    }

    environment {
        SONAR_HOST_URL = 'http://localhost:9000'
        SONAR_AUTH_TOKEN = credentials('last')
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'master', url: 'https://github.com/IMPLEMENTING-A-CRISP-NAVIGATION/IMPLEMENTING-A-CRISP-NAVIGATION.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn compile'
            }
        }

        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }

        stage('SonarQube Analysis') {
            steps {
                sh """
                mvn sonar:sonar \
                -Dsonar.projectKey=sample_project \
                -Dsonar.host.url=$SONAR_HOST_URL \
                -Dsonar.login=$SONAR_AUTH_TOKEN
                """
            }
        }
    }
}
