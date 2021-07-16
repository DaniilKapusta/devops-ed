pipeline {
    agent any
    stages {
        stage('curl') {
            steps {
                script {
                    final String response = sh(script: "curl -s $params.url", returnStdout: true).trim()
                    echo response
                }
            }
        }
        stage('ping') {
                    steps {
                        script {
                            final String response = sh(script: "ping -c 4 $params.url", returnStdout: true).trim()
                             echo response
                        }
                    }
                }
                stage('nslookup') {
                            steps {
                                script {
                                    final String response = sh(script: "nslookup $params.url 8.8.8.8", returnStdout: true).trim()
                                     echo response
                                }
                            }
                }

    }
}