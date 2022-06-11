def pingresult  = ''

pipeline {
    agent any

    parameters {
        string(name: 'pingURL', defaultValue: 'https://ya.ru', description: 'Get URL for ping')
    }

    stages {
        stage('execute') {
            steps {
                sh "pingresult=$(./pingscript.sh ${pingURL})"                
            }
        }

        stage("notify") {
            steps {
                sh "echo ${pingresult}"
                sendMessage("")
            }
        }
    }
}


def sendMessage(message) {
    
}
