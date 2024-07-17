pipeline{
    agent any
    tools{
        maven 'Maven3'
    }
    // environment {
    //     DOCKER_CREDENTIALS = 'creDocker' // ID của credentials đã lưu trong Jenkins
    //     DOCKER_IMAGE_NAME = 'bita356/image1' // Tên image
    // }
    stages{
        stage('clone'){
            steps{
                git branch: 'main', url: 'https://github.com/cmstbita356/Test-Jenkin'
            }
        }
        // stage('Maven build') {
        //     steps {
        //         sh "mvn clean install"
        //     }
        // }
        stage('Build Push Docker') {
            steps {
                script {
                    withDockerRegistry(credentialsId: 'creDocker') {
                        sh "docker build -t bita356/repo:v1 ."
                        sh "docker push -t bita356/repo:v1"
                    }           
                }
            }
        }
    }
}