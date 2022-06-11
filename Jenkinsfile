pipeline {
    agent any

    parameters {
        string(name: 'pingURL', defaultValue: 'https://ya.ru', description: 'Get URL for ping')
    }

    stages {
        stage('write') {
            steps {
                sh "echo ${pingURL}"
            }
        }


        stage('up') {
            steps {
                sh "ls -lah"
            }
        }
    }
}
