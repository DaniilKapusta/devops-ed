pipeline {
    agent any

    stages {
        stage('clone') {
            steps {
          git branch: 'medium', url: 'https://github.com/DaniilKapusta/devops-ed.git'
            }
        }

        stage('build') {
             steps {
                 script {

                    echo sh(script: "ls", returnStdout: true).trim()
                    docker.build("my-image", "-f ./Dockerfile --build-arg PROFILE=$params.PROFILE --build-arg DB=$params.DB --build-arg MYSQL_USER=$params.MYSQL_USER --build-arg MYSQL_URL=$params.MYSQL_URL --build-arg MYSQL_PASS=$params.MYSQL_PASS .")


                 }
}
        }
    }
}
