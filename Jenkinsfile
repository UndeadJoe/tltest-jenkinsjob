pipeline {
    agent any

    parameters {
        string(name: 'pingURL', defaultValue: 'https://ya.ru', description: 'Get URL for ping')
    }

    stages {
        stage('write') {
            steps {
                sh "./pingscript.sh ${pingURL}"
            }
        }


        stage('up') {
            steps {
                sh "ls -lah"
            }
        }
    }
}
