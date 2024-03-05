pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                echo "<------image pulled------>"
                sh 'docker pull ubuntu'
                echo "<------image pulled------>"
            }
        }
    }
}
