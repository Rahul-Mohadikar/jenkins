pipeline {
    agent any
    
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    def dockerfilePath = 'Dockerfile'
                    docker.build("my-node-app", "-f ${dockerfilePath} .")
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    docker.image('my-node-app').run('--rm -d -p 3000:3000')
                }
            }
        }
    }
    
    post {
        success {
            echo 'Docker container started successfully!'
        }
        failure {
            echo 'Failed to start Docker container'
        }
    }
}

