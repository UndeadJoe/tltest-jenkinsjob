pipeline {
    agent any

    parameters {
        string(name: 'URL', defaultValue: 'https://ya.ru', description: 'Get URL for ping')
    }

    stages {
        stage('write') {
            steps {
                sh "echo ${URL}"
            }
        }


        stage('up') {
            steps {
                sh "ls -lah"
            }
        }
    }
}
