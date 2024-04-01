pipeline {
    agent any
    
    environment {
        DOCKER_IMAGE = 'image_ka_naam:tag_ka_naam'
    }
    
    stages {
        stage('Build Wali Stage') {
            steps {
                echo 'Building message print kar rahi hun....'
                // script {
                //     // Build Docker image
                //     // sh 'docker build -t $DOCKER_IMAGE .'
                // }
            }
        }
        
        stage('Deploy Wali Stage') {
            steps {
                echo 'Deploying message print kar rahi hun....'
                // script {
                //     // Run Docker container
                //     // sh 'docker run -dp 127.0.0.1:8000:8000 $DOCKER_IMAGE'
                // }
            }
        }
    }
    
    // post {
    //     always {
    //         // Cleanup - remove Docker image after deployment (optional)
    //         // script {
    //         //     // sh "docker rmi $DOCKER_IMAGE"
    //         // }
    //     }
    // }
}
