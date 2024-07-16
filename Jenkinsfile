pipeline{
    agent any
    stages{
        stage('clone'){
            steps{
                git branch: 'main', url: 'https://github.com/cmstbita356/Test-Jenkin'
            }
        }
        stage('build'){
            steps{
                echo 'Building ...'
            }
        }
    }
}