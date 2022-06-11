def PINGRESULT  = ''
def PINGRESULT_CODE  = 0

pipeline {
    agent any

    parameters {
        string(name: 'pingURL', defaultValue: 'https://ya.ru', description: 'Get URL for ping')
    }

    stages {
        stage('execute') {
            steps {
                PINGRESULT = sh (
                    script: './pingscript.sh ${pingURL}',
                    returnStdout: true
                ).trim()   

                PINGRESULT_CODE = sh (
                    script: './pingscript.sh ${pingURL}',
                    returnStatus: true
                ) == 0           
            }
        }

        stage("notify") {
            steps {
                sh "echo ${PINGRESULT}"
                sh "echo ${PINGRESULT_CODE}"
                sendMessage("")
            }
        }
    }
}


def sendMessage(message) {
    
}
