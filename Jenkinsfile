// pipeline {
//     agent any

//     // tools {
//     //     // Specify the Git installation name
//     //     git 'MyGitInstallation'
//     // }
    
//     environment {
//         DOCKER_IMAGE = 'image_ka_naam:tag_ka_naam'
//     }
    
//     stages {
//         stage('Git Wali Stage') {
//             steps {
//                 echo 'Git say kuch karnay wala message print kar rahi hun....'
//                 // checkout scm
                
//                 // checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/AshnahKhalidKhan/DevOps-Assignment-3-Jenkins-CI-CD-Pipeline']]])
//             }
//         }

//         stage('Build Wali Stage') {
//             steps {
//                 echo 'Building message print kar rahi hun....'
//                 script {
//                     // Build Docker image
//                     sh 'docker build -t $DOCKER_IMAGE .'
//                     // sh 'docker image build -t image_ka_naam:tag_ka_naam .'
//                     // docker image build -t image_ka_naam:tag_ka_naam .
//                 }
//             }
//         }
        
//         stage('Deploy Wali Stage') {
//             steps {
//                 echo 'Deploying message print kar rahi hun....'
//                 // script {
//                 //     // Run Docker container
//                 //     // sh 'docker run -dp 127.0.0.1:8000:8000 $DOCKER_IMAGE'
//                 // }
//             }
//         }
//     }
    
//     // post {
//     //     always {
//     //         // Cleanup - remove Docker image after deployment (optional)
//     //         // script {
//     //         //     // sh "docker rmi $DOCKER_IMAGE"
//     //         // }
//     //     }
//     // }
// }


// pipeline {
//     agent any

//     environment {
//         DOCKER_IMAGE = 'image_ka_naam:tag_ka_naam'
//     }
    
//     stages {
//         stage('Git Wali Stage') {
//             steps {
//                 echo 'Git say kuch karnay wala message print kar rahi hun....'
//                 checkout scm
//                 // Print current branch name
//                 script {
//                     sh 'git rev-parse --abbrev-ref HEAD'
//                 }
//             }
//         }

//         stage('Build Wali Stage') {
//             steps {
//                 echo 'Building message print kar rahi hun....'
//                 script {
//                     sh 'docker build -t $DOCKER_IMAGE .'
//                 }
//             }
//         }
        
//         stage('Deploy Wali Stage') {
//             steps {
//                 echo 'Deploying message print kar rahi hun....'
//             }
//         }
//     }
// }


pipeline {
    agent any 

    stages {
    //     stage('Check Node.js version') {
    //         steps {
    //             // Use the NodeJS plugin to set up Node environment
    //             nodejs('node') {
    //                 sh 'node -v'
    //                 sh 'npm -v'
    //             }
    //         }
    //     }
        stage('Checkout SCM') {
            steps {  
                git branch: 'main', credentialsId: 'github', url: 'https://github.com/AshnahKhalidKhan/DevOps-Assignment-3-Jenkins-CI-CD-Pipeline.git'
            }
        }
        stage('Determine Changes') {
            steps {
                script {
                    def changedFiles = sh(script: "git diff --name-only HEAD HEAD~1", returnStdout: true).trim().split("\n")
                    // env.IS_CLIENT_CHANGED = changedFiles.any { it.startsWith('client') }.toString()
                    echo changedFiles
                }
            }
        }
        // stage('Build and Install') {
        //     when {
        //         expression {
        //             return env.IS_CLIENT_CHANGED == 'true'
        //         }
        //     }
        //     steps {
        //         // Use the NodeJS plugin
        //         nodejs('node') {
        //             sh '''
        //                 echo Build started on date
        //                 cd client
        //                 npm install
        //                 npm run build
        //                 ls
        //             '''
        //         }
        //     }   
        // }
        // stage('Update to S3 and Cloudfront Invalidation') {
        //     when {
        //         expression {
        //             return env.IS_CLIENT_CHANGED == 'true'
        //         }
        //     }
        //     steps {
        //         withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'aws']]) {
        //             // Use the NodeJS plugin
        //             nodejs('node') {
        //                 sh '''#!/bin/bash
        //                     cd client
        //                     aws s3 sync ./build/ s3://skillsphere-s3/
        //                     aws cloudfront create-invalidation --distribution-id "E2LA1JTPDTOT40" --paths "/*"
        //                 '''
        //             }
                }
            }
    