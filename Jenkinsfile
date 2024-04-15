

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
                git branch: 'main', credentialsId: 'github1', url: 'https://github.com/AshnahKhalidKhan/DevOps-Assignment-3-Jenkins-CI-CD-Pipeline.git'
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
    