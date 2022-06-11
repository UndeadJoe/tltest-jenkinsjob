pipeline {
    agent any

    parameters {
        string(name: 'URL', defaultValue: 'https://ya.ru', description: 'Get URL for ping')
    }

    stages {
        stage('write') {
            steps {
                writeFile file: ".env", text: "URL=${URL}"
                sh "cat .env"
            }
        }


        stage('up') {
            steps {
                sh "ls -lah"
            }
        }
    }
}
