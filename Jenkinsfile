pipeline{
    agent any
    environment {
        DOCKER_CREDENTIALS = 'creDocker' // ID của credentials đã lưu trong Jenkins
        DOCKER_IMAGE_NAME = 'bita356/image1' // Tên image
    }
    stages{
        stage('clone'){
            steps{
                git branch: 'main', url: 'https://github.com/cmstbita356/Test-Jenkin'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    // Xây dựng image
                    def customImage = docker.build(DOCKER_IMAGE_NAME)
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                script {
                    // Đăng nhập vào Docker Registry
                    docker.withRegistry(DOCKER_CREDENTIALS) {
                        // Đẩy image lên Docker Registry
                        customImage.push('latest') // Thay đổi tag nếu cần
                    }
                }
            }
        }
    }
}