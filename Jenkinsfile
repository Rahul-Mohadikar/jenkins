pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    // Define Dockerfile path
                    def dockerfilePath = '/home/rahul/project/jenkins'

                    // Build Docker image
                    docker.build('my-docker-image', '-f ${dockerfilePath} .')
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    // Run Docker container
                    docker.image('my-docker-image').run('-d -p 8080:80')
                }
            }
        }
    }
}

