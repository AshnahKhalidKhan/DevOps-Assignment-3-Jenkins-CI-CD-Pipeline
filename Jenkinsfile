pipeline {
    agent any
    
    environment {
        DOCKER_IMAGE = 'image_ka_naam:tag_ka_naam'
    }
    
    stages {
        stage('Build Wali Stage') {
            steps {
                script {
                    // Build Docker image
                    echo 'Building....'
                    // sh 'docker build -t $DOCKER_IMAGE .'
                }
            }
        }
        
        stage('Deploy Wali Stage') {
            steps {
                script {
                    // Run Docker container
                    echo 'Deplouing....'
                    // sh 'docker run -dp 127.0.0.1:8000:8000 $DOCKER_IMAGE'
                }
            }
        }
    }
    
    post {
        always {
            // Cleanup - remove Docker image after deployment (optional)
            script {
                // sh "docker rmi $DOCKER_IMAGE"
            }
        }
    }
}
