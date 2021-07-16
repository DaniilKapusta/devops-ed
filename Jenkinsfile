pipeline {
    agent any

    stages {
        stage('clone') {
          git branch: 'medium', url: 'https://github.com/DaniilKapusta/devops-ed.git'
        }

        stage('build') {
            def customImage = docker.build("my-image")
        }
    }
}
