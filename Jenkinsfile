void dockerHubRegister(String version, String rcNumber) {
    script {
        docker.withRegistry('', 'DOCKER_HUB_REGISTRY') {
            docker.build("dunkelgrau/godot:${version}",
                "--build-arg=\"GODOT_VERSION=${version}\" --build-arg=\"RC_NUMBER=${rcNumber}\" .").push()
        }
    }
}

pipeline {
    agent {
        label 'master'
    }

    stages {
        stage('Deploy')
        {
            parallel {
                stage('Deploy 4.3rc2') {
                    steps {
                        dockerHubRegister('4.3', '2')
                    }
                }
            }
        }
    }
}
